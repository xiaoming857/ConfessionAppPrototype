import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/beng_icon_button.dart';
import 'package:confeal_prototype_test/src/widgets/beng_expansion_tile.dart';


class Item {
  List<String> expandedValue;
  String headerValue;
  bool isExpanded;
  bool initialExpanded;

  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded: false,
    this.initialExpanded: false,
  });
}



class FriendPage extends StatefulWidget {
  double appBarHeight = 45;

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  List<Item> items = [
    Item(
      headerValue: "Best Friend",
      expandedValue: [
        for (int i = 0; i < 3; i++)
          "Best Friend ${i + 1}",
      ],
    ),
    Item(
      headerValue: "Friend",
      expandedValue: [
        for (int i = 0; i < 20; i++)
        "Friend ${i + 1}",
      ],
      initialExpanded: true,
    ),
  ];


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;

    return Column(
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
                left: 15,
                right: 15,
              ),

              child: Row(
                children: [
                  Text(
                    'Friends',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    ),
                  ),


                  Expanded(
                    child: Container(),
                  ),


                  BengIconButton(
                    icon: Icons.person_add,
                    iconColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),


        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            itemCount: items.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (_, int index) {
              return BengExpansionTile(
                tilePadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6
                ),
                childrenPadding: EdgeInsets.zero,
                initiallyExpanded: items[index].initialExpanded,
                title: Text(
                  items[index].headerValue,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                children: [
                  for (String i in items[index].expandedValue)
                    Container(
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 10
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: ExactAssetImage(
                                  'assets/images/profile.png',
                                ),
                              ),


                              SizedBox(
                                width: 10,
                              ),


                              Text(
                                i
                              ),
                            ],
                          ),
                        ),

                        onTap: () {},
                      ),
                    )
                ],

                onExpansionChanged: (bool isExpanded) {
                  print('$index, $isExpanded');
                },
              );
            }
          ),
        ),
      ],
    );
  }
}

