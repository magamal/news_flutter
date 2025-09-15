import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/src/app/navigation/app_router.dart';
import 'package:news_app/src/core/core.dart';
import 'package:news_app/src/di/di.dart' as di;
import 'package:provider/provider.dart';

import '../../localization/generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: di.inject<AppStateProvider>()),
        ChangeNotifierProvider.value(value: di. inject<AppSettingsProvider>()),
      ],
      child: Consumer<AppSettingsProvider>(
        builder: (context, settings, _) {
          return Consumer<AppStateProvider>(builder: (context, appProvider, _) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (context) => S.current.appName,
              locale: settings.locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              color: AppColors.red,
              themeMode: settings.themeMode,
              theme: AppThemeData().lightTheme,
              darkTheme: AppThemeData().darkTheme,
              routerConfig: AppRouter.router,
              builder: (context, child) {
                return Navigator(
                  key: rootNavigatorKey,
                  onGenerateRoute: (_) => MaterialPageRoute(builder: (_) {
                    final state = appProvider.state;
                    final message = appProvider.message;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (state == AppStates.unauthorized) {
                        showErrorDialog(context, "Unauthorized", message ?? "");
                      }
                    });
                    return child!;
                  }),
                );
              },
            );
          });
        },
      ),
    );
  }
}
