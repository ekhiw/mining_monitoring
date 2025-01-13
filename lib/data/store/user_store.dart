import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';

const String nikKey = 'nik';
const String avatarKey = 'ava';
const String nameKey = 'name';

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

  void clear() {
    getStorage.erase();
  }
}
