import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  static GoRoute mediaRouter() => GoRoute(
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
      body: Container(color: Colors.red,),
    );
  }
}
