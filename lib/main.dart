import 'package:flutter/material.dart';
import 'package:tutorial/pages/Main-Page.dart';
import 'package:tutorial/screens/Home-Screen.dart';
import 'package:tutorial/screens/Login-Screen-Update.dart';
import 'package:tutorial/widgets/row-widget.dart';
import 'package:tutorial/widgets/splash-screen-widget.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SplashScreen(),
      //   '/home': (context) => LoginScreenUpdate(),
      // },
      home: SplashScreen()
    );
  }
}
