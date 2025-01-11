import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mining_monitoring/data/model/login_state.dart';
import 'package:mining_monitoring/data/repository/login_repository.dart';

import '../module/network_module.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepository(ref.read(dioProvider));
});

final loginStateProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref.read(loginRepositoryProvider));
});

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginRepository loginRepository;

  LoginNotifier(this.loginRepository) : super(const LoginState.initial());

  Future<void> login(String nik) async {
    state = const LoginState.loading();
    try {
      final success = await loginRepository.login(nik);
      if (success) {
        state = const LoginState.success("Login successful");
      } else {
        state = const LoginState.error("Can't find your NIK");
      }
    } catch (e) {
      state = LoginState.error(e.toString());
    }
  }
}