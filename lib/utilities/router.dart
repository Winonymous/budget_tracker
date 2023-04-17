import 'package:flutter/material.dart';

import '../modules/home_module/views/home_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    HomeScreen.routeName: (context) => const HomeScreen(),
  };
}
