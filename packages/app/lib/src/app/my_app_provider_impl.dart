import 'package:core_ui/src/my_app_provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';

import 'my_app.dart';

@Injectable(as: MyAppProvider)
class MyAppProviderImpl extends MyAppProvider {
  @override
  Widget getMyApp() => MyApp();
}
