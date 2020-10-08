import 'package:confession_app_prototype/utils/post.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confession_app_prototype/widgets/beng_icon_button.dart';

class ConfessionCard extends StatefulWidget {
  Post _post;


  ConfessionCard(
    this._post,
  );


  @override
  _ConfessionCardState createState() => _ConfessionCardState();
}

class _ConfessionCardState extends State<ConfessionCard> {
  Widget header() {
    return SizedBox(
      height: 55,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              widget._post.user.profilePicture,
            ),

            radius: 22,
          ),


          SizedBox(
            width: 10,
          ),


          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget._post.user.username,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                Text(
                  DateTime.now().toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),



          BengIconButton(
            icon: Icons.more_vert,
            onPressed: () {},
          ),
        ],
      ),
    );
  }


  Widget footer() {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          BengIconButton(
            icon: Icons.star_border,
            onPressed: () {},
          ),


          Expanded(
            child: Container(),
          ),


          Text(
            widget._post.likeCount.toString(),
          ),


          BengIconButton(
            icon: MdiIcons.heartOutline,
            onPressed: () {},
          ),


          SizedBox(
            width: 5,
          ),


          Text(
            widget._post.messageCount.toString(),
          ),


          BengIconButton(
            icon: Icons.message,
            onPressed: () {},
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 10
      ),
      decoration: BoxDecoration(
        color: widget._post.postColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0,2),
            color: Colors.grey.withAlpha(150)
          )
        ]
      ),

      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5
          ),
          child: Column(
            children: [
              this.header(),


              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),


              this.footer(),
            ],
          ),
        ),
      ),
    );
  }
}
