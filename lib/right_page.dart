import 'package:flutter/material.dart';


class RightDrawerPage extends StatefulWidget {
  @override
  RightDrawerPageState createState() => new RightDrawerPageState();
}

class RightDrawerPageState extends State<RightDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 200,
            // child: DrawerHeader(
            //     child: Center(
            //       child: Text('header'),
            //     ),
            // ),
            child: UserAccountsDrawerHeader(
              accountEmail: new Text('https://www.baidu.com'),
              accountName: new Text('我是一个好人'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('images/header.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: new Text('个人'),
            subtitle: new Text('个人详情'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: new Text('个人'),
            subtitle: new Text('个人详情'),
          )
        ],
      ),
    );
  }
}
