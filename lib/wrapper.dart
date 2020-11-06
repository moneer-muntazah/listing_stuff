import 'package:flutter/material.dart';

class WrapperExample extends StatelessWidget {
  final List<Widget> children;

  WrapperExample({this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        // alignment: WrapAlignment.center,
        //crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: children,
      ),
    );
  }
}
