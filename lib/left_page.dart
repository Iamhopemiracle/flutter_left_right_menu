import 'package:flutter/material.dart';


class LeftDrawerPage extends StatefulWidget {
  @override
  LeftDrawerPageState createState() => new LeftDrawerPageState();
}

class LeftDrawerPageState extends State<LeftDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('设置'),
        centerTitle: true,///居中
      ),
      body: ListTile(
        leading: Icon(Icons.person),
        title: new Text('个人'),
        subtitle: new Text('个人详情'),
      ),
    );
  }
}
