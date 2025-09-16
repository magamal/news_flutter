import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController{

  static Future<void> save<T>(String key, T value) async {
    final prefs = await SharedPreferences.getInstance();

    if (value is String) {
      await prefs.setString(key, value);
    } else if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(key, value);
    } else {
      throw UnsupportedError("Type ${T.toString()} is not supported");
    }
  }

  static Future<T?> load<T>(String key) async{
    final prefs = await SharedPreferences.getInstance();

    final value = prefs.get(key);
    if (value is T) {
      return value;
    }
    return null;
  }
}