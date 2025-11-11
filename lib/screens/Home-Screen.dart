import 'package:flutter/material.dart';
import 'package:tutorial/screens/Login-Screen.dart';

import '../widgets/column-widget.dart';
import '../widgets/row-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoginScreen(),
      ),
    );
  }
}
