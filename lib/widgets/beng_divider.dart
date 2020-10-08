import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum Position {
  START,
  CENTER,
  END,
}


class BengDivider extends StatelessWidget {
  final Position position;
  final String text;
  final TextStyle textStyle;
  final double lineThickness;
  final double spacing;
  final EdgeInsets padding;
  final Color lineColor;
  final BorderRadius borderRadius;


  BengDivider(
      {
        this.position: Position.CENTER,
        this.text,
        this.textStyle,
        this.lineThickness: 1,
        this.spacing: 5,
        this.padding: const EdgeInsets.symmetric(horizontal: 10),
        this.lineColor: Colors.black,
        this.borderRadius,
      }
      );


  Widget drawLine() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: this.lineColor,
          borderRadius: this.borderRadius ?? BorderRadius.circular(this.lineThickness),
        ),
        height: lineThickness,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.padding,
      child: Row(
        children: (this.position == null || this.text == null || this.text.isEmpty) ? [this.drawLine()] : [
          if (this.position == Position.CENTER || this.position == Position.END)
            this.drawLine(),


          Padding(
            padding: EdgeInsets.only(
              left: (this.position == Position.CENTER || this.position == Position.END) ? this.spacing : 0,
              right: (this.position == Position.CENTER || this.position == Position.START) ? this.spacing : 0,
            ),

            child: Text(
              this.text,
              style: this.textStyle,
            ),
          ),


          if (this.position == Position.CENTER || this.position == Position.START)
            this.drawLine(),
        ],
      ),
    );
  }
}