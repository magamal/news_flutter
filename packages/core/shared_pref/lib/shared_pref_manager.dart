import 'package:injectable/injectable.dart';
import 'package:shared_pref/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPrefsManager {

  Future<void> saveThemeMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPrefKeys.themeModeKey, mode);
  }

  Future<String?> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPrefKeys.themeModeKey);
  }
}