import 'package:flutter/material.dart';
import 'package:workdone/ui/views/tabs/index.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const _pages = <Widget>[
    HomeBody(),
    Messages(),
    Contract(),
    Notifications(),
    User(),
  ];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 70,
        actions: [Icon(Icons.menu, color: Colors.black)],
        backgroundColor: Colors.white,
        leading: Image(image: AssetImage("assets/images/logo.png")),
      ),
      body: Center(
        child: _pages.elementAt(_selectedItem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        currentIndex: _selectedItem,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xffC82333),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'contract',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'user',
          ),
        ],
      ),
    );
  }
}
