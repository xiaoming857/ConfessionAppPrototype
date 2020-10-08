import 'package:flutter/material.dart';

import 'package:confession_app_prototype/pages/sign_in_page.dart';
import 'package:confession_app_prototype/pages/pager.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Confession App",
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => Pager(),
      },
      home: SignInPage(),
    );
  }
}
