import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BengListTile extends StatelessWidget {
  String title;
  Widget trailing;
  BorderRadius borderRadius;
  BorderRadius _defaultBorderRadius = BorderRadius.circular(50);
  Function function;

  BengListTile(
    {
      @required this.title,
      this.trailing,
      this.borderRadius,
      this.function,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: this.borderRadius ?? this._defaultBorderRadius,
      child: ListTile(
        title: Text(
          this.title,
          style: TextStyle(
            fontSize: 14
          ),
        ),

        trailing: this.trailing,

        dense: true,

        contentPadding: EdgeInsets.symmetric(
          horizontal: 25,
        ),

        shape: RoundedRectangleBorder(
            borderRadius: this.borderRadius ?? this._defaultBorderRadius,
        ),

        onTap: this.function ?? () {},
      ),
    );
  }
}
