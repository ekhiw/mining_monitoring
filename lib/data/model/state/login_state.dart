import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(UserResponseDataEntity userData) = _Success;
  const factory LoginState.error(String message) = _Error;
}
