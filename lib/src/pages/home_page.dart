import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/confession_card.dart';
import 'package:confeal_prototype_test/src/widgets/beng_icon_button.dart';
import 'package:confeal_prototype_test/src/models/post.dart';

class HomePage extends StatefulWidget {
  double appBarHeight = 45;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> listViewItem = [
    Post(
      '1',
      '2',
      'Mr.Bean',
      'bean@example.com',
      profilePicture: 'assets/images/bean_profile.jpg',
      postColor: BengColor.nyanza,
    ),

    Post(
      '2',
      '3',
      'Clara Petacci',
      'clara@example.com',
      profilePicture: 'assets/images/clara_petacci_profile.jpg',
      postColor: BengColor.lavenderBlue3,
    ),

    Post(
      '3',
      '4',
      'Leonardo Da Vinci',
      'leonardo@example.com',
      profilePicture: 'assets/images/leonardo_da_vinci_profile.jpg',
      postColor: BengColor.salmonPink,
    ),

    Post(
      '4',
      '5',
      'Miyamoto Musashi',
      'musashi@example.com',
      profilePicture: 'assets/images/miyamoto_musashi_profile.jpg',
      postColor: BengColor.bisque,
    ),

    Post(
      '5',
      '6',
      'Anonymous',
      'yeah@example.com',
      profilePicture: 'assets/images/profile.png',
      postColor: BengColor.blizzardBlue,
    ),
  ];


  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
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
                    "ConFeal",
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
                bottom: MediaQuery.of(context).padding.bottom + 5
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
