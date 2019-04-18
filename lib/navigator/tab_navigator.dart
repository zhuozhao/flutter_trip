import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/my_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() {
    // TODO: implement createState
    return _TabNavigatorState();
  }
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);
  int _currrentIndex = 0; //当前选中的tab
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('网泽车联'),centerTitle: false),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          new HomePage(),
          new SearchPage(),
          new TravelPage(),
          new MyPage()
        ],
        onPageChanged: (index){
          setState(() {
            _currrentIndex = index;
          });
        },
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currrentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currrentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: _activeColor,
                ),
                title: Text(
                  '首页',
                  style: TextStyle(
                      color:
                          _currrentIndex != 0 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: _activeColor,
                ),
                title: Text(
                  '搜索',
                  style: TextStyle(
                      color:
                          _currrentIndex != 1 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.camera_alt,
                  color: _activeColor,
                ),
                title: Text(
                  '旅拍',
                  style: TextStyle(
                      color:
                          _currrentIndex != 2 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: _activeColor,
                ),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color:
                          _currrentIndex != 3 ? _defaultColor : _activeColor),
                )),
          ]),
    );
  }
}
