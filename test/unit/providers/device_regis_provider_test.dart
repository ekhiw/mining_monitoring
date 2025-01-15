import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mining_monitoring/data/model/responses/check_device_id_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/state/device_regis_state.dart';
import 'package:mining_monitoring/data/repository/device_regis_repository.dart';
import 'package:mining_monitoring/di/providers/device_regis_provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Generate mock classes
@GenerateMocks([DeviceRegisRepository])
import 'device_regis_provider_test.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockDeviceRegisRepository mockDeviceRegisRepository;

  setUp(() {
    mockDeviceRegisRepository = MockDeviceRegisRepository();
    container = ProviderContainer(
      overrides: [
        deviceRegisRepositoryProvider.overrideWithValue(mockDeviceRegisRepository),
      ],
    );

    // Add a listener to prevent "Unhandled provider error" messages
    container.listen(
      deviceRegisStateProvider,
          (previous, next) {},
      fireImmediately: true,
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('DeviceRegisNotifier Tests', () {
    const testDeviceId = 'test-device-123';

    test('initial state is DeviceRegisState.initial', () {
      final state = container.read(deviceRegisStateProvider);
      expect(state, const DeviceRegisState.initial());
    });

    group('checkId tests', () {
      test('successful device check updates state correctly', () async {

        final checkDeviceData = CheckDeviceIdResponseDataEntity(
            id: testDeviceId,
            isActive: true,
            createdAt: DateTime.now().toString(),
            activatedAt: 'TEST',
            updatedAt: DateTime.now().toString(),
            equipment: "TEST",
            headUnitSn: "TEST"
        );

        final successResponse = CheckDeviceIdResponseEntity(
          code: 200,
          status: true,
          message: 'Device found',
          data: checkDeviceData,
        );

        when(mockDeviceRegisRepository.checkDeviceId(testDeviceId))
            .thenAnswer((_) async => successResponse);

        await container.read(deviceRegisStateProvider.notifier).checkId(testDeviceId);

        verify(mockDeviceRegisRepository.checkDeviceId(testDeviceId)).called(1);

        final state = container.read(deviceRegisStateProvider);
        expect(state, const DeviceRegisState.success());
      });

      test('device not found updates state correctly', () async {
        final json = {
          "code": 400,
          "status": false,
          "message": "TEST",
          "data": "TEST"
        };

        final errorResponse = ErrorResponseEntity.fromJson(json);

        when(mockDeviceRegisRepository.checkDeviceId(testDeviceId))
            .thenAnswer((_) async => errorResponse);

        await container.read(deviceRegisStateProvider.notifier).checkId(testDeviceId);

        verify(mockDeviceRegisRepository.checkDeviceId(testDeviceId)).called(1);

        final state = container.read(deviceRegisStateProvider);
        expect(state, const DeviceRegisState.deviceNotFound());
      });

      test('check device transitions through loading state', () async {
        final states = <DeviceRegisState>[];

        final checkDeviceData = CheckDeviceIdResponseDataEntity(
            id: testDeviceId,
            isActive: true,
            createdAt: DateTime.now().toString(),
            activatedAt: 'TEST',
            updatedAt: DateTime.now().toString(),
            equipment: "TEST",
            headUnitSn: "TEST"
        );

        final successResponse = CheckDeviceIdResponseEntity(
          code: 200,
          status: true,
          message: 'Device found',
          data: checkDeviceData,
        );

        when(mockDeviceRegisRepository.checkDeviceId(testDeviceId))
            .thenAnswer((_) async {
          await Future.delayed(const Duration(milliseconds: 100));
          return successResponse;
        });

        container.listen(
          deviceRegisStateProvider,
              (previous, next) => states.add(next),
          fireImmediately: true,
        );

        await container.read(deviceRegisStateProvider.notifier).checkId(testDeviceId);

        expect(states, [
          const DeviceRegisState.initial(),
          const DeviceRegisState.checkDeviceLoading(),
          const DeviceRegisState.success(),
        ]);
      });
    });

    group('regisDeviceId tests', () {
      test('successful device registration updates state correctly', () async {

        final checkDeviceData = CheckDeviceIdResponseDataEntity(
            id: testDeviceId,
            isActive: true,
            createdAt: DateTime.now().toString(),
            activatedAt: 'TEST',
            updatedAt: DateTime.now().toString(),
            equipment: "TEST",
            headUnitSn: "TEST"
        );

        final successResponse = CheckDeviceIdResponseEntity(
          code: 200,
          status: true,
          message: 'Device found',
          data: checkDeviceData,
        );

        when(mockDeviceRegisRepository.registerDeviceId(testDeviceId))
            .thenAnswer((_) async => successResponse);

        await container.read(deviceRegisStateProvider.notifier)
            .regisDeviceId(testDeviceId);

        verify(mockDeviceRegisRepository.registerDeviceId(testDeviceId)).called(1);

        final state = container.read(deviceRegisStateProvider);
        expect(state, const DeviceRegisState.webSocketSetupLoading());
      });

      test('failed device registration updates state with error', () async {
        final json = {
          "code": 400,
          "status": false,
          "message": "TEST",
          "data": "TEST"
        };

        final errorResponse = ErrorResponseEntity.fromJson(json);

        when(mockDeviceRegisRepository.registerDeviceId(testDeviceId))
            .thenAnswer((_) async => errorResponse);

        await container.read(deviceRegisStateProvider.notifier)
            .regisDeviceId(testDeviceId);

        verify(mockDeviceRegisRepository.registerDeviceId(testDeviceId)).called(1);

        final state = container.read(deviceRegisStateProvider);
        expect(state, const DeviceRegisState.error('TEST'));
      });

      test('registration transitions through loading states', () async {
        // Arrange
        final states = <DeviceRegisState>[];

        final checkDeviceData = CheckDeviceIdResponseDataEntity(
            id: testDeviceId,
            isActive: true,
            createdAt: DateTime.now().toString(),
            activatedAt: 'TEST',
            updatedAt: DateTime.now().toString(),
            equipment: "TEST",
            headUnitSn: "TEST"
        );

        final successResponse = CheckDeviceIdResponseEntity(
          code: 200,
          status: true,
          message: 'Device found',
          data: checkDeviceData,
        );

        when(mockDeviceRegisRepository.registerDeviceId(testDeviceId))
            .thenAnswer((_) async {
          await Future.delayed(const Duration(milliseconds: 100));
          return successResponse;
        });

        container.listen(
          deviceRegisStateProvider,
              (previous, next) => states.add(next),
          fireImmediately: true,
        );

        await container.read(deviceRegisStateProvider.notifier)
            .regisDeviceId(testDeviceId);

        expect(states, [
          const DeviceRegisState.initial(),
          const DeviceRegisState.deviceRegisLoading(),
          const DeviceRegisState.webSocketSetupLoading(),
        ]);
      });
    });

    test('changeState updates to waitActivation', () {
      container.read(deviceRegisStateProvider.notifier).changeState();

      final state = container.read(deviceRegisStateProvider);
      expect(state, const DeviceRegisState.waitActivation());
    });
  });
}