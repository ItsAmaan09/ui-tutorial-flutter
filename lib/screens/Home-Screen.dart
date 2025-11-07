import 'package:flutter/material.dart';

import '../widgets/column-widget.dart';
import '../widgets/row-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      ),
      body: ColumnWidget(),
    );
  }

}