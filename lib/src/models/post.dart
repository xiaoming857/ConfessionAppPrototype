import 'package:flutter/material.dart';

import 'package:confeal_prototype_test/src/utils/beng_color.dart';

class Post{
  final String _postId;
  final String _userId;
  final String _username;
  final String _email;
  final DateTime _postedDate = DateTime.utc(2020);

  int likeCount;
  int messageCount;
  Color postColor;
  String profilePicture;


  Post(
    this._postId,
    this._userId,
    this._username,
    this._email,
    {
      this.likeCount: 0,
      this.messageCount: 0,
      this.postColor: BengColor.isabelline,
      this.profilePicture: 'assets/images/profile.jpg',
    }
  );

  String get postId => this._postId;
  String get user => this._userId;
  String get username => this._username;
  String get email => this._email;
  DateTime get postedDate => this._postedDate;
}