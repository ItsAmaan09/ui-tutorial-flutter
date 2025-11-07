import 'package:flutter/material.dart';

import 'color-box.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  Widget myBox(Color color, double height, double width, String label) {
    return Container(
      color: color,
      height: height,
      width: width,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorBox(color: Colors.red, height: 100, width: 100, label: ''),
          ColorBox(color: Colors.green, height: 100, width: 100, label: 'Green'),
        ],
      ),
    );
  }
}
