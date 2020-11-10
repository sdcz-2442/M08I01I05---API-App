import 'package:flutter/material.dart';
import 'package:acnh_app_api/bugs/bugs_screen.dart';
import 'package:acnh_app_api/fossils/fossils_screen.dart';
import 'package:acnh_app_api/villagers/villagers_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    VillagersScreen(),
    BugsScreen(),
    FossilsScreen(),
  ];

  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text('Animal Crossing New Horizons');

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            onPressed: () {
            },
            icon: customIcon,
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 35.00),
              title: Padding(padding: EdgeInsets.all(0))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bug_report, size: 35.00),
              title: Padding(padding: EdgeInsets.all(0))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.house_siding_outlined, size: 35.00),
              title: Padding(padding: EdgeInsets.all(0))
          ),
        ],
      ),
    );
  }
}
