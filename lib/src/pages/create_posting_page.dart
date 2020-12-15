import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/beng_icon_button.dart';

class CreatePostingPage extends StatefulWidget {
  double appBarHeight = 45;

  @override
  _CreatePostingPageState createState() => _CreatePostingPageState();
}

class _CreatePostingPageState extends State<CreatePostingPage> {
  List<Widget> showFeatures() {
    int position = 0;
    Map items = {
      'image': {
        'icon': MdiIcons.image,
      },

      'mood': {
        'icon':MdiIcons.emoticonOutline,
      },

      'category': {
        'icon': MdiIcons.segment
      }
    };

    return [
      for (String item in items.keys)
        Expanded(
          child: Container(
            height: 50,

            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: (position++ == 0) ? BorderRadius.horizontal(left: Radius.circular(50)) : (position == items.length) ? BorderRadius.horizontal(right: Radius.circular(50)) : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      items[item]['icon'],
                      color: Colors.white,
                    ),


                    SizedBox(
                      width: 5,
                    ),


                    Text(
                      item,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                ),

                onTap: () {

                },
              ),
            ),
          ),
        ),
    ];
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
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pexels-la-miko-3663040.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),


        child: Column(
          children: [
            Container(
              height: widget.appBarHeight + padding.top,
              decoration: BoxDecoration(
                color: BengColor.aliceBlue.withAlpha(230),
              ),

              padding: EdgeInsets.only(
                top: padding.top,
                left: 5,
                right: 5,
              ),

              child: Row(
                children: [
                  BengIconButton(
                    icon: MdiIcons.chevronLeft,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),

                  Expanded(
                    child: Text(
                      'Create a Post',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),


                  SizedBox(
                    width: 70,
                    child: FlatButton(
                      child: Text(
                        'POST',
                      ),

                      splashColor: Colors.transparent,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),


            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      BengColor.aliceBlue.withAlpha(230),
                      BengColor.aliceBlue.withAlpha(180),
                    ],

                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.0, 0.4),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),

                child: TextField(
                  minLines: null,
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),


            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    BengColor.aliceBlue.withAlpha(180),
                    BengColor.aliceBlue,
                  ],

                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.0, 0.4),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: BengColor.mediumPurple,
                ),

                child: Row(
                  children: this.showFeatures(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


