import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confession_app_prototype/widgets/beng_nav_bar_icon.dart';
import 'package:confession_app_prototype/utils/beng_color.dart';

import 'package:confession_app_prototype/pages/create_posting_page.dart';
import 'package:confession_app_prototype/pages/home_page.dart';
import 'package:confession_app_prototype/pages/friend_page.dart';
import 'package:confession_app_prototype/pages/notification_page.dart';
import 'package:confession_app_prototype/pages/me_page.dart';


class Pager extends StatefulWidget {
  double navBarHeight = 55;
  List<String> navBarItem = ["Home", "Friends", "Notification", "Me"];

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
    ));
  }


  Widget showBody() {
    if (this.position == 0) {
      return HomePage();
    } else if (this.position == 1) {
      return FriendPage();
    } else if (this.position == 2) {
      return NotificationPage();
    } else if (this.position == 3) {
      return MePage();
    }
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: BengColor.ebony,
          statusBarColor: BengColor.ebony,
        )
    );

    return Scaffold(
      extendBody: true,
      backgroundColor: BengColor.beige,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        disabledElevation: 0,
        splashColor: Colors.transparent,
        backgroundColor: BengColor.cafeNoir,
        child: Icon(
          MdiIcons.plus,
        ),
        onPressed: () => createPosting(context),
      ),


      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        color: BengColor.citron,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 5,
          ),
          child: SizedBox(
            height: widget.navBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BengNavBarIcon(
                        icon: Icons.home,
                        text: widget.navBarItem[0],
                        isSelected: this.position == 0,
                        onPressed: () {
                          setPosition(0);
                        }
                    ),


                    BengNavBarIcon(
                      icon: Icons.people,
                      text: widget.navBarItem[1],
                      isSelected: this.position == 1,
                      onPressed: () => setPosition(1),
                    ),
                  ],
                ),


                Row(
                  children: [
                    BengNavBarIcon(
                      icon: MdiIcons.bellRing,
                      text: widget.navBarItem[2],
                      isSelected: this.position == 2,
                      onPressed: () => setPosition(2),
                    ),


                    BengNavBarIcon(
                      icon: Icons.person,
                      text: widget.navBarItem[3],
                      isSelected: this.position == 3,
                      onPressed: () => setPosition(3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),


      body: this.showBody(),
    );
  }
}
