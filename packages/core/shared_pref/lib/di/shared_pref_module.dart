import 'package:injectable/injectable.dart';
import 'package:shared_pref/shared_pref_manager.dart';

@module
abstract class SharedPrefsModule {
  @lazySingleton
  @Named('shared_pref_manager')
  SharedPrefsManager sharedPrefManager() => SharedPrefsManager();
}