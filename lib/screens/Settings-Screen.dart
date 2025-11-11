import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingState();
}

class _SettingState extends State<SettingScreen> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.amberAccent.shade100,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amberAccent.shade100,
            border: Border.all(color: Colors.amberAccent.shade700),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.amber,
                blurRadius: 1,
                offset: Offset(2, 4),
                spreadRadius: 2,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count: $_count'),
              ElevatedButton(onPressed: _increment, child: Text('Increment')),
              ElevatedButton(onPressed: _decrement, child: Text('Decrement')),
            ],
          ),
        ),
      ),
    );
  }
}
