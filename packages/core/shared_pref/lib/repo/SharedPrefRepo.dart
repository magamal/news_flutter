abstract class SharedPrefRepo {
  Future<void> saveThemeMode(String mode);
  Future<String?> loadThemeMode();
}