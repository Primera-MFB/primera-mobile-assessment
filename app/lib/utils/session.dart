import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Session extends GetxService {
  Future<void> write(String key, dynamic value) async {
    return await GetStorage().write(key, value);
  }

  dynamic read(String key) {
    return GetStorage().read(key);
  }

  Future<void> remove(String key) async {
    return await GetStorage().remove(key);
  }

  Future<void> removeAll() async {
    return await GetStorage().erase();
  }
}
