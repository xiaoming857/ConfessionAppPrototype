import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 35,
                      right: 35,
                    ),

                    padding: EdgeInsets.only(
                        top: 100,
                        bottom: 60,
                        right: 30,
                        left: 30
                    ),

                    decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(75),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                        ),


                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),


                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ],
                    ),
                  ),


                  Positioned(
                    left: 0,
                    top: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(5),
                              )
                          ),

                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
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
                          width: 5,
                        ),


                        Text(
                          'Sign\nUp',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),


                  Positioned(
                    bottom: 0,
                    height: 45,
                    width: 120,
                    child: RaisedButton(
                      color: Colors.orangeAccent,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: () {},
                    ),
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