import 'package:confession_app_prototype/utils/post.dart';
import 'package:confession_app_prototype/utils/user.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confession_app_prototype/utils/beng_color.dart';
import 'package:confession_app_prototype/widgets/confession_card.dart';
import 'package:confession_app_prototype/widgets/beng_icon_button.dart';

class HomePage extends StatefulWidget {
  double appBarHeight = 45;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> listViewItem = [
    Post(
      '1',
      User(
          '1',
          'bean@example.com',
          '12345678',
          'Mr.Bean',
          'assets/images/bean_profile.jpg'
      ),
      postColor: BengColor.maximumYellowRed,
    ),

    Post(
      '2',
      User(
          '2',
          'clara@example.com',
          '12345678',
          'Clara Petacci',
          'assets/images/clara_petacci_profile.jpg'
      ),
      postColor: BengColor.vividTangerine,
    ),


    Post(
      '3',
      User(
          '3',
          'leonardo@example.com',
          '12345678',
          'Leonardo Da Vinci',
          'assets/images/leonardo_da_vinci_profile.jpg'
      ),
      postColor: BengColor.emerald,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),

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
                    "愉乐",
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
                    icon: MdiIcons.filter,
                    iconColor: Colors.white,
                    onPressed: () {},
                  ),


                  BengIconButton(
                    icon: MdiIcons.magnify,
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
                  top: 5,
                  bottom: 5
              ),
              itemCount: this.listViewItem.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return ConfessionCard(
                  this.listViewItem[index],
                );
              }
          ),
        ),
      ],
    );
  }
}
