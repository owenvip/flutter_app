import 'package:flutter/material.dart';
//import 'mock/data.dart';

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
  //  Widget _listItemBuilder(BuildContext context, int index) {
  //    return Container(
  //      color: Colors.white,
  //      margin: EdgeInsets.all(8.0),
  //      child: Column(
  //        children: <Widget>[
  //          Image.network(datas[index].imageUrl),
  //          SizedBox(height: 16.0,),
  //          Text(
  //            datas[index].title,
  //            style: Theme.of(context).textTheme.title,
  //          ),
  //          Text(
  //            datas[index].author,
  //            style: Theme.of(context).textTheme.subhead,
  //          ),
  //          SizedBox(height: 16.0,),
  //        ],
  //      ),
  //    );
  //  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(    // Tab
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(    // 左边图标
          //   icon: Icon(Icons.menu),
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
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
        ),
        // ListView.builder(
        //   itemCount: datas.length,
        //   itemBuilder: _listItemBuilder,
        // ),
        drawer: Drawer( // 侧边栏(右侧为endDrawer)
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toLowerCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              ListTile(
                title: Text('messages'),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),   //点击关闭侧边栏
              ),
              ListTile(
                title: Text('favorite'),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('settings'),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

