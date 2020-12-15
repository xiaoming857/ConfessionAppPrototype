import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:confeal_prototype_test/src/models/user.dart';
import 'package:confeal_prototype_test/src/pages/sign_in_page.dart';
import 'package:confeal_prototype_test/src/pages/pager.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  User _user = null;

  void _signInCallback(User user) {
    setState(() {
      this._user = user;
    });
  }


  void _signOutCallback() {
    setState(() {
      this._user = null;
    });
  }


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: BengColor.aliceBlue,
        systemNavigationBarIconBrightness: Brightness.dark
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getData(),
      builder: (BuildContext ctx, AsyncSnapshot asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.none) {
          return _loading();
        } else if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return _loading();
        } else {
          if (asyncSnapshot.hasData) {
            return Pager(this._user, () => this._signOutCallback());
          } else {
            return SignInPage((User user) => this._signInCallback(user));
          }
        }
      },
    );
  }


  Future<User> _getData() async {
    return Future.delayed(Duration(seconds: 0), () {
      return this._user;
    });
  }


  Widget _loading() {
    return Scaffold(
      backgroundColor: BengColor.aliceBlue,
      body: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
