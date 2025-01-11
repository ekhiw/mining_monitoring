import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/data/model/api_error_response.dart';
import 'package:mining_monitoring/data/model/device_regis_state.dart';
import 'package:mining_monitoring/data/model/device_check_response.dart';
import 'package:mining_monitoring/data/model/login_state.dart';
import 'package:mining_monitoring/data/repository/device_regis_repository.dart';
import 'package:mining_monitoring/data/repository/login_repository.dart';

import '../../data/model/device_regis_response.dart';
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
    print("EKHIW check $response");
    if (response is DeviceCheckResponse) {
      state = const DeviceRegisState.success();
    } else {
      state = const DeviceRegisState.deviceNotFound();
    }
  }
  
  Future<void> regisDeviceId(String deviceId) async {
    print("EKHIW DEVICE ID ${deviceId}");
    state = const DeviceRegisState.deviceRegisLoading();
    final response = await deviceRegisRepository.registerDeviceId(deviceId);
    print("EKHIW check $response");
    if (response is DeviceRegisResponse) {
      state = const DeviceRegisState.waitActivation();
    } else if (response is ApiErrorResponse){
      state = DeviceRegisState.error(response.message);
    }
  }

}