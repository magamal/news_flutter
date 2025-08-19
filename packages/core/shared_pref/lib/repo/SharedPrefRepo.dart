abstract class SharedPrefRepo {
  Future<void> saveThemeMode(String mode);
  Future<String?> loadThemeMode();
  Future<void> saveLanguage(String locale);
  Future<String?> loadLanguage();
}