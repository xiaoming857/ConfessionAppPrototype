import 'package:confession_app_prototype/utils/beng_color.dart';
import 'package:confession_app_prototype/widgets/beng_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class MePage extends StatefulWidget {
  double appBarHeight = 45;

  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Column(
        children: [
          Container(
            height: widget.appBarHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: BengColor.citron,
            ),

            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15
                ),

                child: Row(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),


                    Expanded(
                      child: Container(),
                    ),


                    BengIconButton(
                      icon: Icons.settings,
                      iconColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),


          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: BengColor.citron,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25)
                )
              ),

              child: Material(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              child: Column(
                                children: [
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),


                                  Text(
                                    '100',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              onTap: () {},
                            ),


                            CircleAvatar(
                              radius: 50,
                              child: Text(
                                'XM',
                                style: TextStyle(
                                  fontSize: 36,
                                ),
                              ),
                            ),


                            InkWell(
                              splashColor: Colors.transparent,
                              child: Column(
                                children: [
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),


                                  Text(
                                    '150',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              onTap: () {},
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),


                        Text(
                          'Xiao Ming',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 10,
                    ),


                    SizedBox(
                      width: 130,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add Description',
                              style: TextStyle(
                                color: Colors.white54,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white
                              ),
                            ),


                            SizedBox(
                              width: 5,
                            ),


                            Icon(
                              MdiIcons.pencil,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        ),

                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(150),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: InkWell(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Liked',
                                  ),


                                  Text(
                                    '55',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              onTap: () {},
                            ),
                          ),


                          Container(
                            width: 1,
                            color: Colors.grey,
                            height: 30,
                          ),


                          Expanded(
                            child: InkWell(
                              child: Column(
                                children: [
                                  Text(
                                    'Starred',
                                  ),


                                  Text(
                                    '150',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              onTap: () {},
                            ),
                          ),


                          Container(
                            width: 1,
                            color: Colors.grey,
                            height: 30,
                          ),


                          Expanded(
                            child: InkWell(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Commented',
                                  ),


                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 15,
                    ),


                    Text(
                      'MY POSTS',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),

                    Divider(
                      thickness: 2,
                    ),

                    Align (
                      alignment: Alignment.center,
                      child: Text(
                        'No Post',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




