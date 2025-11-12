import 'package:flutter/material.dart';
import 'package:tutorial/screens/Login-Screen.dart';

import '../widgets/column-widget.dart';
import '../widgets/row-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Container :
      // body: Center(
      //   child: Container(
      //     height: 150,
      //     width: 150,
      //     decoration: BoxDecoration(
      //       color: Colors.blue,
      //       borderRadius: BorderRadius.circular(20),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black26,
      //           blurRadius: 10,
      //           offset: Offset(2, 2),
      //         ),
      //       ],
      //     ),
      //     child: Center(
      //       child: Text("Hello", style: TextStyle(color: Colors.white)),
      //     ),
      //   ),
      // ),
      // 2. STACK :
      // body: Stack(
      //   children: [
      //     Image.asset('assets/logo.png'),
      //     Text(
      //       "Welcome",
      //       style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.white,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ],
      // ),

      // 3. CARD :
      // body: Card(
      //   elevation: 5,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       children: [
      //         Icon(Icons.person, size: 50, color: Colors.blue),
      //         SizedBox(height: 8),
      //         Text(
      //           "User Profile",
      //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Peter Parker"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
