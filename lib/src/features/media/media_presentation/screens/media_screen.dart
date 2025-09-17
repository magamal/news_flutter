import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/src/di/di.dart';

import '../../../../navigation/navigation.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  static GoRoute mediaRouter() => GoRoute(
    name: AppRoutes.mediaScreen.name,
    path: AppRoutes.mediaScreen.path,
    builder: (context, state) => const MediaScreen(),
  );

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              inject<AppNavigator>().navigateTo(AppRoutes.newsList);
            },
            child: const Text("navigate"),
        ),
      ),
    );
  }
}
