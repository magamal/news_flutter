import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/src/core/core.dart';

import 'my_app.dart';

@Injectable(as: MyAppProvider)
class MyAppProviderImpl extends MyAppProvider {
  @override
  Widget getMyApp() => const MyApp();
}
