enum AppRoutes {
  newsList(name: "newsList", path: "/"),
  mediaScreen(name: "mediaScreen" , path: "/media_screen"),
  ;

  final String name; // needed for pushNamed
  final String path;

  const AppRoutes({required this.name, required this.path});
}
