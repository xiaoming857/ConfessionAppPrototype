import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quotes/quote_model.dart';
import 'package:quotes/quotes.dart';


class QuoteRequest {
  final List<Quote> quotes = [];
  final List<String> link = [];
  Size _size;
  int _index = -1;


  void _generateQuote() {
    this.quotes.add(Quotes.getRandom());
    this.link.add(
      'https://picsum.photos/id/${
          Random().nextInt(100).round().abs()
      }/${
          this._size.width.ceil()
      }/${
          this._size.height.ceil()
      }'
    );
  }


  List<dynamic> nextQuote(Size size) {
    print(_index);
    if (this._index == -1) this._size = size;
    this._generateQuote();
    this._index++;
    List<dynamic> temp = [this.quotes[this._index], this.link[this._index]];
    return temp;
  }


  List<dynamic> prevQuote() {
    print(_index);
    if (this._index == 0) {
      return [this.quotes[this._index], this.link[this._index]];
    }

    this._index--;
    return [this.quotes[this._index], this.link[this._index]];
  }
}