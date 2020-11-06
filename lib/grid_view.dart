import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  final List<Widget> children;

  GridViewExample({this.children});

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: children,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2.12
      ),
    );
  }
}
