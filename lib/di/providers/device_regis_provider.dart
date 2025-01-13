import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/data/model/responses/api_error_response.dart';
import 'package:mining_monitoring/data/model/device_regis_state.dart';
import 'package:mining_monitoring/data/model/login_state.dart';
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
      print("EKHIW check ${response.toJson().toString()}");
      state = const DeviceRegisState.success();
    } else {
      state = const DeviceRegisState.deviceNotFound();
    }
  }
  
  Future<void> regisDeviceId(String deviceId) async {
    print("EKHIW DEVICE ID ${deviceId}");
    state = const DeviceRegisState.deviceRegisLoading();
    final response = await deviceRegisRepository.registerDeviceId(deviceId);
    if (response is CheckDeviceIdResponseEntity) {
      print("EKHIW check ${response.toJson().toString()}");
      state = const DeviceRegisState.webSocketSetupLoading();
    } else if (response is ApiErrorResponse){
      state = DeviceRegisState.error(response.message);
    }
  }

  void changeState() {
    state = const DeviceRegisState.waitActivation();
  }

}