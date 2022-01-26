

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostfire0123/sections/recent_work/datail_page/ditailpage.dart';

class RecentWork {
  final String image, category, title;
  final int id;

  final Function press1;


  RecentWork({  required this.press1, required this.id, required this.image,required this.category,required this.title});
}


// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Pythonで統計処理・\nデータ分析をしています",
    category: "データサイエンス",
    image: "assets/images/python_img.png",
    press1: (context){
      Route route = MaterialPageRoute(builder: (c) => DitailPage());
      Navigator.pushReplacement(context, route);
    }
    ),
  RecentWork(
    id: 2,
    title: "FlutterでIos・Androidアプリの開発をしています",
    category: "モバイルアプリ開発",
    image: "assets/images/flutter_img.png",
      press1: (){print('1');}
    ),
  RecentWork(
    id: 3,
    title: "SQLでデータベースの設計をしています",
    category: "データベース設計",
    image: "assets/images/sql_img.png",
      press1: (){print('1');}
  ),
  RecentWork(
    id: 4,
    title: "HTML & CCSでWebページを作成しています",
    category: "Webデザイン",
    image: "assets/images/css_img.png",
      press1: (){print('1');}
  ),
];
