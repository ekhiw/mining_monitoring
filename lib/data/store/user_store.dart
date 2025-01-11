import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

const String nikKey = 'nik';

@injectable
class GetUserStoreHelper {
  GetUserStoreHelper(this.getStorage);
  GetStorage getStorage;

  Future<void> saveNik(String nik) async {
    await getStorage.write(nikKey, nik);
  }

  String? getNik() {
    return getStorage.read(nikKey);
  }

  void clear() {
    getStorage.erase();
  }
}
