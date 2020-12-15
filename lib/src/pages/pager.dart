import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confeal_prototype_test/src/widgets/beng_nav_bar_icon.dart';
import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/models/user.dart';

import 'package:confeal_prototype_test/src/pages/create_posting_page.dart';
import 'package:confeal_prototype_test/src/pages/home_page.dart';
import 'package:confeal_prototype_test/src/pages/friend_page.dart';
import 'package:confeal_prototype_test/src/pages/notification_page.dart';
import 'package:confeal_prototype_test/src/pages/me_page.dart';


class Pager extends StatefulWidget {
  final User _user;
  final Function _signOutCallback;
  double navBarHeight = 55;
  List<String> navBarItem = ["Home", "Friends", "Utilities", "Me"];

  Pager(this._user, this._signOutCallback);

  @override
  _PagerState createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  int position = 0;

  void setPosition(int position) {
    setState(() {
      this.position = position;
    });
  }


  void createPosting (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return CreatePostingPage();
      }
    )).whenComplete(() {
      if (this.position != 3) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        );
      }
    });
  }


  Widget showBody() {
    if (this.position == 0) {
      return HomePage();
    } else if (this.position == 1) {
      return FriendPage();
    } else if (this.position == 2) {
      return NotificationPage();
    } else if (this.position == 3) {
      return MePage(widget._user, widget._signOutCallback);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: BengColor.aliceBlue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          elevation: 1,
          focusElevation: 0,
          hoverElevation: 0,
          highlightElevation: 0,
          disabledElevation: 0,
          splashColor: Colors.transparent,
          backgroundColor: BengColor.mediumPurple,
          child: Icon(
            MdiIcons.plus,
          ),

          onPressed: () => createPosting(context),
        ),
      ),

      bottomNavigationBar: Container(
        height: widget.navBarHeight,
        decoration: BoxDecoration(
          color: BengColor.aliceBlue,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, -1),
            ),
          ],
        ),

        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  BengNavBarIcon(
                    icon: MdiIcons.homeOutline,
                    message: widget.navBarItem[0],
                    isSelected: this.position == 0,
                    onPressed: () {
                      setPosition(0);
                    }
                  ),


                  BengNavBarIcon(
                    icon: Icons.people_outline,
                    message: widget.navBarItem[1],
                    isSelected: this.position == 1,
                    onPressed: () => setPosition(1),
                  ),
                ],
              ),


              Row(
                children: [
                  BengNavBarIcon(
                    icon: MdiIcons.shapeOutline,
                    message: widget.navBarItem[2],
                    isSelected: this.position == 2,
                    onPressed: () => setPosition(2),
                  ),


                  BengNavBarIcon(
                    icon: Icons.person_outline,
                    message: widget.navBarItem[3],
                    isSelected: this.position == 3,
                    onPressed: () => setPosition(3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


      body: this.showBody(),
    );
  }
}
