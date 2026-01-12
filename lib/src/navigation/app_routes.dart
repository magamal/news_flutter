import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  newsList(name: "newsList", path: "/"),
  mediaScreen(name: "mediaScreen" , path: "/media_screen"),
  ;

  const AppRoutes({required this.name, required this.path});

  final String name; // needed for pushNamed
  final String path;

  void go(BuildContext context, {Object? extra}) => context.go(path, extra: extra);
  void push(BuildContext context, {Object? extra}) => context.push(path, extra: extra);
  void goNamed(BuildContext context, {Object? extra}) => context.goNamed(name, extra: extra);
  void pushNamed(BuildContext context, {Object? extra}) => context.pushNamed(name, extra: extra);
}
