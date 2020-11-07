import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewExample extends StatelessWidget {
  final List<Widget> children;

  StaggeredGridViewExample({this.children});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView(
      children: children,
      gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        // staggeredTileBuilder: (_) => StaggeredTile.count(1, 2),
        staggeredTileBuilder: (_) => StaggeredTile.fit(1),
      ),
    );
  }
}
