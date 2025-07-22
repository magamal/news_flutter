import 'package:app/src/navigation/app_router.dart';
import 'package:app/src/routes/app_router.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:core_ui/src/resources/app_colors.dart';
import 'package:core_ui/src/resources/resources_index.dart';
import 'package:localization/generated/l10n.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc, ThemeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (context) => S.current.appName,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          color: AppColors.red,
          themeMode: state.themeMode,
          theme: AppThemeData().lightTheme,
          darkTheme: AppThemeData().darkTheme,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}