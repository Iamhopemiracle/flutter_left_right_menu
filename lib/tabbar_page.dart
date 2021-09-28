import 'package:flutter/material.dart';

import 'package:flutter_drawer_menu/home_page.dart';
import 'package:flutter_drawer_menu/me_page.dart';
import 'package:flutter_drawer_menu/left_page.dart';
import 'package:flutter_drawer_menu/right_page.dart';

class TabbarPage extends StatefulWidget {
  @override
  TabbarPageState createState() => new TabbarPageState();
}

class TabbarPageState extends State<TabbarPage> {
  @override
  final List<Widget> page_children = [
    HomePage(),
    MePage(),
  ];
  ///页面
  final List<String> page_title = ['首页', '我的'];
  ///标题
  int _currentIndex = 0;
  ///当前选中的页面
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(page_title[_currentIndex]),
        ///导航栏标题
        centerTitle: true, ///导航栏标题居中显示（IOS默认居中，Android默认靠左）
        leading: _currentIndex == 0 ? Builder( ///自定义抽屉效果按钮
          builder: (BuildContext context) {
            return IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                    Scaffold.of(context).openDrawer();
                }
            );
          },
        ):null,
        actions: _currentIndex == 0 ?  [
          Builder(builder: (context) {
            return IconButton(
                icon: Icon(Icons.settings),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                }
            );
          }),
        ] : null,
      ),
      body: page_children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onChangePage,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: page_title[_currentIndex],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: page_title[_currentIndex],
          ),
        ],
      ),
      drawer: _currentIndex == 0 ? LeftDrawerPage() : null,
      endDrawer: _currentIndex == 0 ? RightDrawerPage() : null,
    );
  }

  void onChangePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
