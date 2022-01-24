class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({required this.id, required this.image,required this.category,required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Pythonで統計処理・\nデータ分析をしています",
    category: "データサイエンス",
    image: "assets/images/python_img.png",
  ),
  RecentWork(
    id: 2,
    title: "FlutterでIos・Androidアプリの開発をしています",
    category: "モバイルアプリ開発",
    image: "assets/images/flutter_img.png",
  ),
  RecentWork(
    id: 3,
    title: "SQLでデータベースの設計をしています",
    category: "データベース設計",
    image: "assets/images/sql_img.png",
  ),
  RecentWork(
    id: 4,
    title: "HTML & CCSでWebページを作成しています",
    category: "Webデザイン",
    image: "assets/images/css_img.png",
  ),
];
