import 'package:confession_app_prototype/utils/beng_color.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confession_app_prototype/widgets/beng_divider.dart';
import 'package:confession_app_prototype/widgets/sign_in_icon_button.dart';
import 'package:confession_app_prototype/pages/sign_up_page.dart';
import 'package:confession_app_prototype/pages/home_page.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _signInWithEmail() {
    Navigator.of(context).popAndPushNamed('/home');
  }

  void _signInWithGoogle() {}

  void _signInWithFacebook() {}

  void _signUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return SignUpPage();
        }
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BengColor.beige,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Text(
                        '愉',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w500,
                        ),
                      ),


                      Text(
                        '乐',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),


                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 10,
                      vertical: 0,
                    ),

                    child: Form(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'email',
                            ),
                          ),


                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'password',
                            ),
                          ),


                          SizedBox(
                            height: 5,
                          ),


                          Container(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(160)
                                ),
                              ),

                              onTap: () {},
                            ),
                          ),


                          SizedBox(
                            height: 20,
                          ),


                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 5,
                            child: RaisedButton(
                              color: Color.fromRGBO(188, 189, 139, 1),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              onPressed: _signInWithEmail,
                            ),
                          ),


                          SizedBox(
                            height: 5,
                          ),


                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Don\'t have any account?',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(160)
                                ),
                              ),


                              SizedBox(
                                width: 5,
                              ),


                              InkWell(
                                child: Text(
                                  'Sign Up',
                                ),

                                onTap: _signUp,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                  Column(
                    children: [
                      BengDivider(
                        text: 'OR',
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3
                        ),
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SignInIconButton(
                            icon: MdiIcons.google,
                            iconColor: Colors.white,
                            buttonColor: Colors.redAccent,
                            onPressed: _signInWithGoogle,
                          ),


                          SignInIconButton(
                            icon: MdiIcons.facebook,
                            iconColor: Colors.indigo,
                            onPressed: _signInWithFacebook,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}