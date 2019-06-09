import 'package:flutter/material.dart';
import 'mock/data.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(datas[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            datas[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            datas[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('flutter app'),
        elevation: 30.0,    // 阴影效果
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello world',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 50.0
        )
      ),
    );
  }
}

