import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final double elevation;
  final double borderRadius;
  final double padding;
  final String label;
  final double fontSize;
  final double height;
  final double width;
  final String score;

  const CardWidget({
    super.key,
    required this.color,
    required this.elevation,
    required this.borderRadius,
    required this.padding,
    required this.label,
    required this.fontSize,
    required this.height,
    required this.width,
    required this.score
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(borderRadius),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(label, style: TextStyle(fontSize: fontSize)),
            Text(score, style: TextStyle(fontSize: fontSize)),
          ],
        ),
      ),
    );
  }
}
