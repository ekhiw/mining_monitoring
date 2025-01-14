import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mining_monitoring/data/model/state/login_state.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';
import 'package:mining_monitoring/data/repository/login_repository.dart';

import '../../data/store/user_store.dart';
import '../component/service_locator.dart';
import '../module/network_module.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepository(ref.read(dioProvider));
});

final loginStateProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref.read(loginRepositoryProvider));
});

GetUserStoreHelper getStoreHelper = getIt<GetUserStoreHelper>();

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginRepository loginRepository;

  LoginNotifier(this.loginRepository) : super(const LoginState.initial());

  Future<void> login(String nik) async {
    state = const LoginState.loading();
    try {
      final response = await loginRepository.login(nik);
      if (response is UserResponseEntity) {
        getStoreHelper.saveUser(response.data);
        state = LoginState.success(response.data);
      } else {
        state = const LoginState.error("Can't find your NIK");
      }
    } catch (e) {
      state = LoginState.error(e.toString());
    }
  }
}