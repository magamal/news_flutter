import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'assets/env/.env.dev')
abstract class Env {
  @EnviedField(obfuscate: true)
  static String BASE_URL = _Env.BASE_URL;

}
