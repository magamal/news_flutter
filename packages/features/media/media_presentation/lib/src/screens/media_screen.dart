import 'package:flutter/material.dart';

class MediaScreen extends StatelessWidget {
  static const String routeName = '/media_screen';
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is Media Screen"),
      ),
    );
  }
}
