import 'package:flutter/material.dart';

import 'package:confession_app_prototype/utils/user.dart';

class Post{
  final String _postId;
  final User _user;
  final DateTime _postedDate = DateTime.now();

  int likeCount;
  int messageCount;
  Color postColor;

  Post(
    this._postId,
    this._user,
    {
      this.likeCount: 0,
      this.messageCount: 0,
      this.postColor: Colors.amber,
    }
  );

  String get postId => _postId;

  User get user => _user;
}