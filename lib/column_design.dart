import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  final List<Widget> children;

  ColumnExample({this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // alignment: WrapAlignment.center,
        //crossAxisAlignment: WrapCrossAlignment.center,
        // spacing: 8,
        children: children,
      ),
    );
  }
}
