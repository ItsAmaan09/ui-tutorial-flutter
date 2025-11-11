import 'package:flutter/material.dart';
import 'package:tutorial/widgets/column-widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColumnWidget(),
    );
  }
}
