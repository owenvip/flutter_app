import 'package:flutter/material.dart';
import 'mock/data.dart';

class MyListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(datas[index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            datas[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            datas[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
