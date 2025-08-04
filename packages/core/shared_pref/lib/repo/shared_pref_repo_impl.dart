import 'package:injectable/injectable.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';
import 'package:shared_pref/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: SharedPrefRepo)
class SharedPrefRepoImpl extends SharedPrefRepo {

  @override
  Future<void> saveThemeMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPrefKeys.themeMode.value, mode);
  }

  @override
  Future<String?> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPrefKeys.themeMode.value);
  }
}