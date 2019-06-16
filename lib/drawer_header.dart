import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer( // 侧边栏(右侧为endDrawer)
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
                'owen', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('owennet@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/28889342?s=460&v=4'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://resources.ninghao.org/images/candy-shop.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode( //颜色蒙板
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight,
                  ),
                )
            ),
          ),
          ListTile(
            title: Text('messages'),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context), //点击关闭侧边栏
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
    );
  }
}