import 'package:app/src/app/my_app.dart';
import 'package:app/src/di/injector.dart';
import 'package:flutter/material.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}
