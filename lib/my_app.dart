import 'package:flutter/material.dart';

import 'navigation_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: LoginPage(),
      home: NavigationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
