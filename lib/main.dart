import 'package:flutter/material.dart';

import 'package:confeal_prototype_test/src/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ConFeal",
      home: MyApp(),

      routes: {
      },
    ),
  );
}
