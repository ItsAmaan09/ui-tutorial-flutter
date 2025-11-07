import 'package:flutter/material.dart';
import 'package:tutorial/widgets/my-card-widget.dart';

import 'color-box.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColorBox(
            color: Colors.pinkAccent.shade700,
            height: 250,
            width: 400,
            label: '',
            cardWidget: CardWidget(
              color: Colors.pinkAccent.shade200,
              elevation: 6,
              borderRadius: 12,
              padding: 10,
              label: 'IND',
              score: '140-5',
              fontSize: 25,
              height: 50,
              width: 200,
            ),
          ),
          ColorBox(
            color: Colors.pinkAccent.shade200,
            height: 150,
            width: 400,
            label: '',
          ),
          ColorBox(
            color: Colors.pinkAccent.shade700,
            height: 250,
            width: 400,
            label: '',
          ),
        ],
      ),
    );
  }
}
