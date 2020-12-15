import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/widgets/beng_icon_button.dart';
import 'package:confeal_prototype_test/src/models/user.dart';
import 'package:confeal_prototype_test/src/pages/setting_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class MePage extends StatefulWidget {
  final User _user;
  final Function _signOutCallback;
  List list = [];

  double appBarHeight = 45;

  MePage(this._user, this._signOutCallback);

  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  void initState() {
    super.initState();
    this._updateStatusBar();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            bottom: 30
          ),
          decoration: BoxDecoration(
            color: BengColor.aliceBlue,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ],
          ),

          child: Column(
            children: [
              this._appBar(),
              this._profileBar(),
            ],
          ),
        ),


        Expanded(
          child: (widget.list.length == 0) ? Padding(
            padding: EdgeInsets.only(bottom: padding.bottom),
            child: Center(
              child: Text(
                'No Post',
              ),
            ),
          ) : ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: widget.list.length,
            itemBuilder: (BuildContext buildContext, int index) {
              return ListTile(
                title: Text(
                  'hi',
                ),
              );
            }
          ),
        ),
      ],
    );
  }


  void _updateStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }


  Widget _appBar() {
    double topPadding = MediaQuery.of(context).padding.top;
    return Container(
      height: widget.appBarHeight + topPadding,
      padding: EdgeInsets.only(top: topPadding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: BengColor.aliceBlue,
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
                'My Profile',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                ),
              ),


              Expanded(child: SizedBox(),),


              BengIconButton(
                icon: Icons.settings,
                iconColor: Colors.black54,
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext buildContext) {
                      return SettingPage(widget._signOutCallback);
                    }
                  )). whenComplete(() => this._updateStatusBar());

                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _profileBar() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Material(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: ExactAssetImage(
                      widget._user.profilePicture,
                    ),
                  ),


                  SizedBox(
                    height: size.height * 0.02,
                  ),


                  Text(
                    widget._user.username,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: size.height * 0.02,
            ),


            Column(
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),


                SizedBox(height: 3,),


                SizedBox(
                  width: 24,
                  height: 24,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    child: Icon(
                      MdiIcons.chevronDown,
                      size: 16,
                      color: Colors.black54,
                    ),

                    onTap: () {},
                  ),
                ),
              ],
            ),


            SizedBox(height: size.height * 0.05,),


            this._bar(),
          ],
        ),
      ),
    );
  }


  Widget _bar() {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
                    'Posts',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),


                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 18,
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),


                  Text(
                    '150',
                    style: TextStyle(
                      fontSize: 18,
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
                right: Radius.circular(10),
              ),

              child: Column(
                children: [
                  Text(
                    'Commented',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),


                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 18,
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
    );
  }
}




