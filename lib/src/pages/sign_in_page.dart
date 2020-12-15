import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/beng_divider.dart';
import 'package:confeal_prototype_test/src/widgets/sign_in_icon_button.dart';
import 'package:confeal_prototype_test/src/pages/sign_up_page.dart';
import 'package:confeal_prototype_test/src/models/user.dart';


class SignInPage extends StatefulWidget {
  final Function(User user) _refresh;

  SignInPage(this._refresh);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _signInWithEmail() {
    widget._refresh(User(
      '1',
      'Anonymous',
      'anonymous@example.com',
      '123456',
      '654321',
      profilePicture: 'assets/images/profile.png',
    ));
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
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BengColor.aliceBlue,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        child: SizedBox(
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),

                physics: BouncingScrollPhysics(),

                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'C O N',
                          style: TextStyle(
                            fontSize: 28
                          ),
                        ),


                        Text(
                          'F E',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.w500,
                          ),
                        ),


                        Text(
                          'A L',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: size.height * 0.1,),


                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: 0,
                      ),

                      child: Form(
                        child: Column(
                          children: [
                            SizedBox(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'email',
                                ),
                              ),

                              height: 60,
                            ),


                            SizedBox(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'password',
                                ),
                              ),

                              height: 60,
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


                            SizedBox(height: size.height * 0.05,),


                            SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 3 / 5,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),

                                color: BengColor.mediumPurple,
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),

                                onPressed: _signInWithEmail,
                              ),
                            ),


                            SizedBox(
                              height: 10,
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

                    SizedBox(height: size.height * 0.1,),

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
            ],
          ),
        ),
      ),
    );
  }
}