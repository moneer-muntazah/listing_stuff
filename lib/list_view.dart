import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<Widget> children;

  ListViewExample({this.children});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children,
    );
  }
}
