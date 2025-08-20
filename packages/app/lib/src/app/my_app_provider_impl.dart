import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/my_app_provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';
import 'package:di/di/di.dart' as di;
import 'package:provider/provider.dart';

import 'my_app.dart';

@Injectable(as: MyAppProvider)
class MyAppProviderImpl extends MyAppProvider {
  @override
  Widget getMyApp() =>
      ChangeNotifierProvider(
        create: (context) => di.inject<AppSettingsProvider>(),
        child: const MyApp(),
      );
}
