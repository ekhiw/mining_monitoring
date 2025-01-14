import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_regis_state.freezed.dart';

@freezed
class DeviceRegisState with _$DeviceRegisState {
  const factory DeviceRegisState.initial() = _Initial;
  const factory DeviceRegisState.checkDeviceLoading() = _CheckDeviceLoading;
  const factory DeviceRegisState.deviceNotFound() = _DeviceNotFound;
  const factory DeviceRegisState.deviceRegisLoading() = _DeviceRegisLoading;
  const factory DeviceRegisState.webSocketSetupLoading() = _WebSocketSetupLoading;
  const factory DeviceRegisState.waitActivation() = _WaitActivation;
  const factory DeviceRegisState.success() = _Success;
  const factory DeviceRegisState.error(String message) = _Error;
}
