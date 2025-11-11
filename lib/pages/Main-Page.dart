import 'package:flutter/material.dart';
import 'package:tutorial/screens/Favourite-Screen.dart';
import 'package:tutorial/screens/Settings-Screen.dart';

import '../screens/Home-Screen.dart';
import '../widgets/column-widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    FavouriteScreen(),
    SettingScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade700,
        title: Text('Hello flutter', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        fixedColor: Colors.pinkAccent.shade700,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        onTap: onItemTapped,
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
    );
  }
}
