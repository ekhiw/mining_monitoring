import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';
import 'package:mining_monitoring/data/model/state/login_state.dart';
import 'package:mining_monitoring/data/repository/login_repository.dart';
import 'package:mining_monitoring/data/store/user_store.dart';
import 'package:mining_monitoring/di/providers/login_provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';


import '../mocks/mock_user_store_helper.dart';

@GenerateMocks([LoginRepository])
import 'login_provider_test.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockLoginRepository mockLoginRepository;
  late MockGetUserStoreHelper mockUserStoreHelper;
  final getIt = GetIt.instance;

  setUp(() {
    mockLoginRepository = MockLoginRepository();
    mockUserStoreHelper = MockGetUserStoreHelper();

    if (getIt.isRegistered<GetUserStoreHelper>()) {
      getIt.unregister<GetUserStoreHelper>();
    }
    getIt.registerSingleton<GetUserStoreHelper>(mockUserStoreHelper);
    container = ProviderContainer(
      overrides: [
        loginRepositoryProvider.overrideWithValue(mockLoginRepository),
      ],
    );

    container.listen(
      loginStateProvider,
          (previous, next) {},
      fireImmediately: true,
    );
  });


  tearDown(() {
    container.dispose();
    getIt.reset();
  });


  group('LoginNotifier Tests', () {
    const testNik = '12345';
    const testShiftId = '048C-DS';
    const testUnitId = 'e676e18f12';

    test('initial state is LoginState.initial', () {
      final state = container.read(loginStateProvider);
      expect(state, const LoginState.initial());
    });

    test('successful login updates state correctly', () async {

      final dataResponse = UserResponseDataEntity(
        id: "1",
        name: 'Test User',
        nik: testNik,
        departmentId: "TEST",
        departmentName: "TEST",
        email: "TEST",
        imageUrl: "TEST",
        isActive: true,
        loginAt: "TEST",
        phone: "TEST",
        roleName: "TEST",
        siteId: "TEST",
        siteName: "TEST",
        unitCode: "TEST",
        unitId: "TEST",
        unitTypeId: "TEST",
      );

      final successResponse = UserResponseEntity(
        code: 200,
        status: true,
        message: 'Success',
        data: dataResponse,
      );

      when(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).thenAnswer((_) async => successResponse);

      // Act
      await container.read(loginStateProvider.notifier).login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      );

      // Assert
      verify(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).called(1);

      final state = container.read(loginStateProvider);
      expect(
        state,
        LoginState.success(dataResponse),
      );
    });

    test('failed login with error response updates state correctly', () async {

      final json = {
        "code": 400,
        "status": false,
        "message": "TEST",
        "data": "TEST"
      };

      final errorResponse = ErrorResponseEntity.fromJson(json);

      when(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).thenAnswer((_) async => errorResponse);

      // Act
      await container.read(loginStateProvider.notifier).login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      );

      // Assert
      verify(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).called(1);

      final state = container.read(loginStateProvider);
      expect(
        state,
        const LoginState.error("Can't find your NIK"),
      );
    });

    test('login throws exception updates state with error', () async {
      // Arrange
      when(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).thenThrow(Exception('Network error'));

      // Act
      await container.read(loginStateProvider.notifier).login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      );

      // Assert
      verify(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).called(1);

      final state = container.read(loginStateProvider);
      expect(
        state,
        predicate((LoginState s) => s.whenOrNull(
          error: (msg) => msg.contains('Network error'),
        ) ?? false),
      );
    });

    test('login state transitions through loading state', () async {
      // Arrange
      final states = <LoginState>[];

      final dataResponse = UserResponseDataEntity(
        id: "1",
        name: 'Test User',
        nik: testNik,
        departmentId: "TEST",
        departmentName: "TEST",
        email: "TEST",
        imageUrl: "TEST",
        isActive: true,
        loginAt: "TEST",
        phone: "TEST",
        roleName: "TEST",
        siteId: "TEST",
        siteName: "TEST",
        unitCode: "TEST",
        unitId: "TEST",
        unitTypeId: "TEST",
      );

      final successResponse = UserResponseEntity(
        code: 200,
        status: true,
        message: 'Success',
        data: dataResponse,
      );

      when(mockLoginRepository.login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      )).thenAnswer((_) async {
        // Add delay to ensure we can capture loading state
        await Future.delayed(const Duration(milliseconds: 100));
        return successResponse;
      });

      // Add listener to capture state changes
      container.listen(
        loginStateProvider,
            (previous, next) => states.add(next),
        fireImmediately: true,
      );

      // Act
      await container.read(loginStateProvider.notifier).login(
        testNik,
        shiftId: testShiftId,
        unitId: testUnitId,
      );

      // Assert
      expect(states, [
        const LoginState.initial(),
        const LoginState.loading(),
        LoginState.success(dataResponse),
      ]);
    });

    test('empty NIK validation', () async {
      // Act
      await container.read(loginStateProvider.notifier).login(
        '',
        shiftId: testShiftId,
        unitId: testUnitId,
      );

      // Assert
      verifyNever(mockLoginRepository.login(
        "1",
        shiftId: "1",
        unitId: "1",
      ));

      final state = container.read(loginStateProvider);
      expect(
        state,
        const LoginState.error('NIK cannot be empty'),
      );
    });
  });
}