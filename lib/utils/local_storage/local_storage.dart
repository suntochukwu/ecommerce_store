import 'package:get_storage/get_storage.dart';

class Tlocalstorage {
  static final Tlocalstorage _instance = Tlocalstorage._internal();

  factory Tlocalstorage() {
    return _instance;
  }

  Tlocalstorage._internal();

  final _storage = GetStorage();

  Future<void> savedata<T>(String key, T Value) async {
    await _storage.write(key, Value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
