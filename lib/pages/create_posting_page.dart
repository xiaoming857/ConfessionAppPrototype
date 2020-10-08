import 'package:confession_app_prototype/widgets/beng_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:confession_app_prototype/utils/beng_color.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                    ),


                    SizedBox(
                      width: 5,
                    ),


                    Text(
                      item,
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pexels-la-miko-3663040.jpg',
            ),
            fit: BoxFit.cover
          ),
        ),


        child: Column(
          children: [
            Container(
              height: widget.appBarHeight,
              decoration: BoxDecoration(
                color: BengColor.beige.withAlpha(230),
              ),

              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
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
                      BengColor.beige.withAlpha(230),
                      BengColor.beige.withAlpha(180),
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
                color: BengColor.beige.withAlpha(180),
              ),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: BengColor.citron.withAlpha(200),
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


