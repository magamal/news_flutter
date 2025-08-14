import 'package:app/src/navigation/app_router.dart';
import 'package:core_domain/core_domain.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:core_ui/src/resources/app_colors.dart';
import 'package:core_ui/src/resources/resources_index.dart';
import 'package:localization/generated/l10n.dart';
import 'package:provider/provider.dart';

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

          builder: (context, child) {
            return Navigator(
                key: rootNavigatorKey,
                onGenerateRoute: (_) => MaterialPageRoute(
                      builder: (_) => Consumer<AppProvider>(
                        builder: (context, appProvider, _) {
                          final status = appProvider.status;
                          final message = appProvider.message;

                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (status == AppStatus.unauthorized) {
                              showErrorDialog(
                                  context, "Unauthorized", message ?? "");
                              appProvider.reset();
                            } else if (status == AppStatus.error) {
                              showErrorDialog(context, "Error", message ?? "");
                              appProvider.reset();
                            } else if (status == AppStatus.appNeedsUpdate) {
                              showErrorDialog(
                                context,
                                "Update Required",
                                message ?? "Please update the app to the latest version.",
                              );
                              appProvider.reset();
                            }
                          });

                          return child!;
                        },
                      ),
                    ));
          },
        );
      },
    );
  }
}