import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/state/device_regis_state.dart';
import 'package:mining_monitoring/data/model/state/login_state.dart';
import 'package:mining_monitoring/data/repository/device_regis_repository.dart';
import 'package:mining_monitoring/data/repository/login_repository.dart';

import '../../data/model/responses/check_device_id_response_entity.dart';
import '../module/network_module.dart';

final deviceRegisRepositoryProvider = Provider<DeviceRegisRepository>((ref) {
  return DeviceRegisRepository(ref.read(dioProvider));
});

final deviceRegisStateProvider = StateNotifierProvider<DeviceRegisNotifier, DeviceRegisState>((ref) {
  return DeviceRegisNotifier(ref.read(deviceRegisRepositoryProvider));
});

class DeviceRegisNotifier extends StateNotifier<DeviceRegisState> {
  final DeviceRegisRepository deviceRegisRepository;

  DeviceRegisNotifier(this.deviceRegisRepository) : super(const DeviceRegisState.initial());

  Future<void> checkId(String deviceId) async {
    state = const DeviceRegisState.checkDeviceLoading();
    final response = await deviceRegisRepository.checkDeviceId(deviceId);
    if (response is CheckDeviceIdResponseEntity) {
      if(response.data.isActive) {
        state = const DeviceRegisState.success();
      } else {
        state = const DeviceRegisState.webSocketSetupLoading();
      }
    } else {
      state = const DeviceRegisState.deviceNotFound();
    }
  }
  
  Future<void> regisDeviceId(String deviceId) async {
    state = const DeviceRegisState.deviceRegisLoading();
    final response = await deviceRegisRepository.registerDeviceId(deviceId);
    if (response is CheckDeviceIdResponseEntity) {
      state = const DeviceRegisState.webSocketSetupLoading();
    } else if (response is ErrorResponseEntity){
      state = DeviceRegisState.error(response.message);
    }
  }

  void changeState() {
    state = const DeviceRegisState.waitActivation();
  }

}