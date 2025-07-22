import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/my_app_provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:di/di/di.dart' as di;

import 'my_app.dart';

@Injectable(as: MyAppProvider)
class MyAppProviderImpl extends MyAppProvider {
  @override
  Widget getMyApp() =>
      BlocProvider(
        create: (context) => di.inject<ThemeBloc>(),
        child: MyApp(),
      );
}
