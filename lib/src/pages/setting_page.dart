import 'package:confeal_prototype_test/src/widgets/beng_divider.dart';
import 'package:confeal_prototype_test/src/widgets/beng_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/beng_icon_button.dart';

class SettingPage extends StatefulWidget {
  final double appBarHeight = 45;
  final Function _signOutCallback;

  SettingPage(this._signOutCallback);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: BengColor.aliceBlue,
      body: Column(
        children: [
          Container(
            height: widget.appBarHeight + padding.top,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: BengColor.mediumPurple,
            ),

            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(
                  top: padding.top,
                  left: 5,
                  right: 15,
                ),

                child: Row(
                  children: [
                    BengIconButton(
                      icon: MdiIcons.chevronLeft,
                      iconColor: Colors.white,

                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),

                    Text(
                      "Setting",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                      ),
                    ),


                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),

              child: Column(
                children: [
                  BengDivider(
                    text: 'Profile',
                    position: Position.START,
                    lineColor: Colors.black54,
                    textStyle: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 15,),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),

                    child: Column(
                      children: [
                        BengListTile(
                          title: 'Change Username',
                          trailing: Text(
                            'Anonymous',
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            textAlign: TextAlign.right,

                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        BengListTile(
                          title: 'Change Message',
                          trailing: SizedBox(
                            width: 100,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              textAlign: TextAlign.right,

                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 15,),


                  BengDivider(
                    text: 'Account',
                    position: Position.START,
                    lineColor: Colors.black54,
                    textStyle: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 15,),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),

                    child: Column(
                      children: [
                        BengListTile(
                          title: 'Change Password',
                          trailing: Icon(
                            MdiIcons.keyOutline,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 15,),


                  BengDivider(
                    text: 'Display',
                    position: Position.START,
                    lineColor: Colors.black54,
                    textStyle: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 15,),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),

                    child: Column(
                      children: [
                        BengListTile(
                          title: 'Theme',
                          trailing: Icon(
                            MdiIcons.formatPaint,
                            size: 16,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),

            width: size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                  ),

                  child: Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),

                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: BengColor.vividTangerine,
                  onPressed: () {
                    widget._signOutCallback();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
