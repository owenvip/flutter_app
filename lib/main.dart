import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'bottom_navigation_bar.dart';
import 'list_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),  // 选中高亮颜色
        splashColor: Colors.white70,   // 点击水波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(    // Tab
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(    // 左边图标
          //   icon: Icon(Icons.menu),.mx98\[oute67\[oua
          //   tooltip: 'Navigration',
          //   onPressed: null,  //点击事件
          // ),
          title: Text('flutter app'),
          actions: <Widget>[      // 右边图标
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            )
          ],
          elevation: 30.0,    // 阴影效果
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,  // 未选中标签颜色
            indicatorColor: Colors.black54,   // indicator: 下划线
            indicatorSize: TabBarIndicatorSize.label,   // 下划线长度: 标签长度
            indicatorWeight: 5.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              MyListView(),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
        ),
        drawer: DrawerHead(),
        bottomNavigationBar: MyBottomNavigationBar()
      ),
    );
  }
}

