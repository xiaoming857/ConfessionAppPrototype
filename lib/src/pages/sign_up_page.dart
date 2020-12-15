import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size buttonSize = Size(150, 50);
    double bottomPadding = 80;
    double topPadding = 125;
    double buttonPosition = 35;
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
                padding: EdgeInsets.symmetric(vertical: 15),
                physics: BouncingScrollPhysics(),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 0,
                        bottom: buttonSize.height / 2,
                        left: size.width * 0.1,
                        right: size.width * 0.1,
                      ),

                      padding: EdgeInsets.only(
                          top: topPadding,
                          bottom: bottomPadding,
                          right: 30,
                          left: 30
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.75),
                      ),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 60,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 60,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    Positioned(
                      left: 0,
                      top: buttonPosition,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 75,
                            decoration: BoxDecoration(
                              color: BengColor.mediumPurple,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(100),
                              ),
                            ),

                            child: Material(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(100)
                              ),

                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(100)
                                ),

                                child: Icon(
                                  MdiIcons.chevronLeft,
                                  size: 36,
                                  color: Colors.white,
                                ),

                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),


                          SizedBox(
                            width: 10,
                          ),


                          Text(
                            'Sign\nUp',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),


                    Positioned(
                      bottom: 0,
                      height: buttonSize.height,
                      width: buttonSize.width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),

                        color: BengColor.mediumPurple,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
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