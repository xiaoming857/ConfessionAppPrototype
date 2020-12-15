import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';
import 'package:confeal_prototype_test/src/services/quote_request.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:quotes/quote_model.dart';


class QuotePage extends StatefulWidget {
  final QuoteRequest _quoteRequest = QuoteRequest();

  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  List<dynamic> currentQuote;
  final List<Quote> quotes = [];
  final List<String> link = [];
  int _index;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.bottom,
    ]);
    
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: BengColor.aliceBlue,
        systemNavigationBarIconBrightness: Brightness.dark,
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    if (this.currentQuote == null) this.currentQuote = widget._quoteRequest.nextQuote(size);

    return Scaffold(
      backgroundColor: BengColor.aliceBlue,
      body: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(),


          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(this.currentQuote[1]),
                fit: BoxFit.cover,
                onError: (a, __) {
                  print(a);
                  return Center(
                    child: Icon(Icons.error),
                  );
                },
              ),
            ),
          ),


          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  BengColor.aliceBlue.withOpacity(0.75),
                  BengColor.aliceBlue,
                ],

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 1],
              ),
            ),
          ),


          Positioned(
            child: Image.asset(
              'assets/images/double_quote.png',
              height: 50,
              color: Colors.black54,
            ),

            top: 60,
            left: 40,
          ),


          SizedBox(
            width: size.width * 0.8,
            child: Text(
              this.currentQuote[0].content,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
            ),
          ),


          Positioned(
            bottom: size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    child: Icon(
                      MdiIcons.chevronLeft,
                      size: 35,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                    color: BengColor.aliceBlue,

                    onPressed: () {
                      this.currentQuote = widget._quoteRequest.prevQuote();
                      setState(() {});
                    },
                  ),
                ),


                SizedBox(width: size.width * 0.05,),


                SizedBox(
                  width: 60,
                  height: 60,
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    child: Icon(
                      MdiIcons.heartOutline,
                      color: Colors.white,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                    color: BengColor.mediumPurple,

                    onPressed: () {},
                  ),
                ),


                SizedBox(width: size.width * 0.05,),


                SizedBox(
                  width: 60,
                  height: 60,
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    child: Icon(
                      MdiIcons.chevronRight,
                      size: 35,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                    color: BengColor.aliceBlue,

                    onPressed: () {
                      this.currentQuote = widget._quoteRequest.nextQuote(size);
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
