abstract class SharedPrefRepo {
  Future<void> saveThemeMode(String mode);
  Future<String?> loadThemeMode();
  Future<void> saveLanguage(String languageCode);
  Future<String?> loadLanguage();
}