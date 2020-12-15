import 'package:confeal_prototype_test/src/pages/quote_page.dart';
import 'package:confeal_prototype_test/src/widgets/beng_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class NotificationPage extends StatefulWidget {
  final double appBarHeight = 45;

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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

    final List games = [
      ['Kunti', 'assets/images/logos/kunti_logo.png'],
      ['Ham', 'assets/images/logos/ham_logo.png'],
      ['Kameraria', 'assets/images/logos/kameraria_logo.png'],
    ];

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
                    'Utilities',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ),


        Expanded(
          child: ListView(
            padding: EdgeInsets.only(
              bottom: padding.bottom,
            ),

            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 10,),


              Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return QuotePage();
                      }
                    )).whenComplete(() => this._updateStatusBar());
                  },

                  child: SizedBox(
                    height: size.height * 0.2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          child: Image.asset(
                            'assets/images/sakura.png',
                            height: size.height * 0.2,
                          ),

                          bottom: 0,
                          right: 0,
                        ),


                        Positioned(
                          child: Image.asset(
                            'assets/images/double_quote.png',
                            color: Colors.grey,
                            height: 30,
                          ),

                          top: 25,
                          left: 30,
                        ),


                        Positioned(
                          right: 0,
                          child: Container(
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey.withAlpha(125),
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10),
                              ),
                            ),
                            
                            
                            child: Icon(
                              MdiIcons.chevronRight,
                              color: Colors.white,
                            ),
                          ),
                        ),


                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 30,
                            ),


                            SizedBox(
                              width: size.width * 0.8,
                              child: Text(
                                'If you cannot do great things,\ndo small things in a great way.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 21,
                                ),
                              ),
                            ),


                            SizedBox(height: 5,),


                            Text(
                              'Napoleon Hill',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              

              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius:BorderRadius.circular(10),
                ),


                padding: EdgeInsets.only(
                  top: 15,
                  bottom: 5,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Games',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),


                    SizedBox(height: 10,),


                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (List game in games)
                          Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.11,
                                width: size.height * 0.11,
                                child: RaisedButton(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  color: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      game[1],
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  onPressed: () {},
                                ),
                              ),


                              SizedBox(height: 5,),


                              SizedBox(
                                width: size.height * 0.11,
                                child: Text(
                                  game[0],
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 10,),


                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Powered by: ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),


                          Text(
                            'Kotacc',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),


                          Image(
                            height: 25,
                            image: AssetImage(
                              'assets/images/logos/kotacc_logo.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _updateStatusBar() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom, SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: BengColor.aliceBlue,
      ),
    );
  }
}
