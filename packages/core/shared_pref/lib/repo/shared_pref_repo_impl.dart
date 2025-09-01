import 'package:injectable/injectable.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';
import 'package:shared_pref/shared_pref_controller.dart';
import 'package:shared_pref/shared_pref_keys.dart';

@LazySingleton(as: SharedPrefRepo)
class SharedPrefRepoImpl extends SharedPrefRepo {

  @override
  Future<void> saveThemeMode(String mode) async {
    await SharedPrefController.save(SharedPrefKeys.themeMode.name, mode);
  }

  @override
  Future<String?> loadThemeMode() async {
    return SharedPrefController.load(SharedPrefKeys.themeMode.name);
  }

  @override
  Future<String?> loadLanguage() async {
    return SharedPrefController.load(SharedPrefKeys.language.name);
  }

  @override
  Future<void> saveLanguage(String languageCode) async {
    await SharedPrefController.save(SharedPrefKeys.language.name, languageCode);
  }
}