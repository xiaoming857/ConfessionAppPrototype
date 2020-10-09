import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:confession_app_prototype/utils/beng_color.dart';
import 'package:confession_app_prototype/widgets/beng_icon_button.dart';


class NotificationPage extends StatefulWidget {
  double appBarHeight = 55;

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),

      child: Column(
        children: [
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
                      "Notification",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
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


          SizedBox(
            height: 15,
          ),


          Text(
            'No Notification'
          ),
        ],
      ),
    );
  }
}
