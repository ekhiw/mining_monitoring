import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';
import 'package:mining_monitoring/data/store/user_store.dart';
import 'package:mockito/mockito.dart';

class MockGetUserStoreHelper extends Mock implements GetUserStoreHelper {
  @override
  Future<void> saveUser(UserResponseDataEntity user) async {
    return Future.value();
  }
}