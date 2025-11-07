import 'package:flutter/material.dart';
import 'package:tutorial/widgets/row-widget.dart';

import 'my-card-widget.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final String label;
  final Widget? cardWidget;
  const ColorBox({
    super.key,
    required this.color,
    required this.height,
    required this.width,
    required this.label,
    this.cardWidget
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(2,4)
          )
        ]
      ),
      // color: color,
      height: height,
      width: width,
      child: Stack(
        children: [
          Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          if(cardWidget != null)
            Positioned(
                top: 20,
                child: cardWidget!)
        ],
      ),
    );
  }
}
