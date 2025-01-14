import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';

const String nikKey = 'nik';
const String avatarKey = 'ava';
const String nameKey = 'name';
const String unitIdKey = 'unitId';
const String unitCodeKey = 'unitCode';

@injectable
class GetUserStoreHelper {
  GetUserStoreHelper(this.getStorage);
  GetStorage getStorage;

  Future<void> saveNik(String nik) async {
    await getStorage.write(nikKey, nik);
  }

  Future<void> saveUser(UserResponseDataEntity data) async {
    await getStorage.write(nikKey, data.id);
    await getStorage.write(avatarKey, data.imageUrl);
    await getStorage.write(nameKey, data.name);
    await getStorage.write(unitIdKey, data.unitId);
    await getStorage.write(unitCodeKey, data.unitCode);
  }

  String? getNik() {
    return getStorage.read(nikKey);
  }

  String? getAvatar() {
    return getStorage.read(avatarKey);
  }

  String? getName() {
    return getStorage.read(nameKey);
  }

  String? getUnitId() {
    return getStorage.read(unitIdKey);
  }

  String? getUnitCode() {
    return getStorage.read(unitCodeKey);
  }

  void clear() {
    getStorage.erase();
  }
}
