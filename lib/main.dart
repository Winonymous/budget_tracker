import 'package:flutter/material.dart';

import 'modules/home_module/views/home_page.dart';
import 'utilities/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: HomeScreen.routeName,
      routes: AppRouter.routes,
    );
  }
}
