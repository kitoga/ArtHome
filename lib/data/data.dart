import 'package:flutter/material.dart';


class Story{
  final String imgpath;
  final String profile;
  final String name;

  Story({
    @required this.imgpath,
    @required this.profile,
    @required this.name,
  });

}

class Feed{
  final String pImg;
  final String pName;
  final String pCaption;
  final String feedImg;
  final String loveNum;
  final String comments;
  final String shares;

  const Feed({
    @required this.pImg,
    @required this.pName,
    @required this.pCaption,
    @required this.feedImg,
    @required this.loveNum,
    @required this.comments,
    @required this.shares,
  });

}