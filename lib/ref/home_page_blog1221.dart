import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_1221_blog/page_view/Convex_BottomBar_page.dart';
import 'package:test_1221_blog/page_view/rflutter_alert.dart';
import 'package:test_1221_blog/page_view/tabbarView/tabbarview_page.dart';
import 'package:test_1221_blog/page_view/textAnimation.dart';
import 'card/TransitionButton.dart';
import 'style/consts.dart';
import 'card/bottomNavigation_page.dart';
import 'card/transferButton.dart';
import 'page_view/chart_linePage.dart';
import 'page_view/ratingBar_page.dart';
import 'package:test_1221_blog/page_view/chart_scatterPage.dart';
import 'package:test_1221_blog/page_view/chartMain_page.dart';
import 'package:test_1221_blog/page_view/insta_page.dart';


class homePage extends StatelessWidget {
  static const id = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: appBarTextStyle(subTitle: 'ホーム画面',),
        centerTitle: true,
        actions: [
          IconButton(icon:Icon(Icons.home), onPressed: () {}),
          IconButton(icon:Icon(Icons.home), onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: appbar_green,


      ),

      body: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'アニメーションテキストへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => textAnimation()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'ChartListへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chartpage()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'RatingBarへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ratingBar()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'rflutter_alertへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => rFlutterAlert()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'Instaへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Insta_page()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: okaneru_orange, //ボタンの背景色
                ),
                child: Center(
                  child: transferButton(title: 'TabBarViewへ'),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabBarViewMain()),
                  );
                },
              ),
            ),
            TransitionButton(
                text: 'convex_bottom_bar',
                child: ConvexButtomBar()),

          ],
        ),
        bottomNavigationBar: bottomNavigation_page(),
      ),
    );
  }
}



