import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/// In production project, use the builder constructor when possible to
/// create objects lazily.

import 'wrapper.dart';
import 'grid_view.dart';
import 'list_view.dart';
import 'staggered_package.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final faker = Faker();
  final colors = <Color>[
    Colors.greenAccent,
    Colors.amber,
    Colors.black12,
    Colors.indigoAccent,
    Colors.brown,
    Colors.cyan,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.teal,
    Colors.deepPurple,
  ];
  final random = math.Random();

  @override
  Widget build(BuildContext context) {
    var builds = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("we have $builds builds");
    });
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("listing stuff"),
        ),
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(builder: (ctx) {
            final size = MediaQuery.of(ctx).size;
            // return WrapperExample(
            //   children: List.generate(500, (i) {
            //     return Container(
            //       color: colors[random.nextInt(colors.length)],
            //       width: (size.width - 24) / 2,
            //       margin: const EdgeInsets.only(bottom: 8),
            //       child: MyListTile(
            //         title: faker.person.name(),
            //         subtitle: faker.lorem.sentence(),
            //         count: (i) => builds += i,
            //       ),
            //     );
            //   }),
            // );
            // return GridViewExample(
            //   children: List.generate(500, (i) {
            //     return LayoutBuilder(
            //       builder: (context, constraint) {
            //         print(constraint.maxHeight);
            //         return Container(
            //             color: colors[random.nextInt(colors.length)],
            //             width: (size.width - 24) / 2,
            //             child: Column(
            //               children: <Widget>[
            //                 Container(
            //                   color: Colors.black,
            //                   height: constraint.maxHeight * 0.5,
            //                 ),
            //                 MyListTile(
            //                   title: faker.person.name(),
            //                   subtitle: faker.lorem.sentence(),
            //                   count: (i) => builds += i,
            //                 ),
            //               ],
            //             )
            //         );
            //       }
            //     );
            //   }),
            // );
            // return GridViewExample(
            //   children: List.generate(500, (i) {
            //     return Container(
            //       color: colors[random.nextInt(colors.length)],
            //       // width: (size.width - 24) / 2,
            //       child: Column(
            //         children: <Widget>[
            //           Expanded(
            //             flex: 2,
            //             child: Container(
            //               color: Colors.black,
            //               child: Container(
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ),
            //           Expanded(
            //             flex: 1,
            //             child: MyListTile(
            //               title: faker.person.name(),
            //               subtitle: faker.lorem.sentence(),
            //               count: (i) => builds += i,
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   }),
            // );
            // return ListViewExample(
            //   children: List.generate(500, (i) {
            //     return Container(
            //       color: colors[random.nextInt(colors.length)],
            //       width: (size.width - 24) / 2,
            //       margin: const EdgeInsets.only(bottom: 8),
            //       child: MyListTile(
            //         title: faker.person.name(),
            //         subtitle: faker.lorem.sentence(),
            //         count: (i) => builds += i,
            //       ),
            //     );
            //   }),
            // );
            // return StaggeredGridViewExample(
            //   children: List.generate(500, (i) {
            //     return Container(
            //         color: colors[random.nextInt(colors.length)],
            //         // width: (size.width - 24) / 2,
            //         child: Column(
            //           children: <Widget>[
            //             Container(
            //               color: Colors.black,
            //               height: 75,
            //             ),
            //             MyListTile(
            //               title: faker.person.name(),
            //               subtitle: faker.lorem.sentence(),
            //               count: (i) => builds += i,
            //             ),
            //           ],
            //         )
            //     );
            //   }),
            // );
            // return StaggeredGridViewExample(
            //   children: List.generate(500, (i) {
            //     return Container(
            //         color: colors[random.nextInt(colors.length)],
            //         // width: (size.width - 24) / 2,
            //         child: Column(
            //           children: <Widget>[
            //             Container(
            //               color: Colors.black,
            //               height: 75,
            //             ),
            //             MyListTile(
            //               title: faker.person.name(),
            //               subtitle: faker.lorem.sentence(),
            //               count: (i) => builds += i,
            //             ),
            //           ],
            //         )
            //     );
            //   }),
            // );

            ///
            ///
            /// For testing performance.
            ///
            ///
            ///

            /// Don't rely on there is some thing going on about cache.
            // return StaggeredGridView.countBuilder(
            //     itemCount: 1000,
            //     crossAxisCount: 2,
            //     staggeredTileBuilder: (_) => StaggeredTile.fit(1),
            //     itemBuilder: (_, i) {
            //       final container = Container(
            //         color: colors[random.nextInt(colors.length)],
            //         // width: (size.width - 24) / 2,
            //         child: Column(
            //           children: <Widget>[
            //             Container(
            //               color: Colors.black,
            //               height: 75,
            //             ),
            //             MyListTile(
            //               title: faker.person.name(),
            //               subtitle: faker.lorem.sentence(),
            //               count: (i) => builds += i,
            //             ),
            //           ],
            //         ),
            //       );
            //       if (i == 0) {
            //         return Builder(builder: (ctx) {
            //           print("first container built");
            //           return container;
            //         });
            //       }
            //       return container;
            //     });

            return GridView.builder(
                itemCount: 5000,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 2.12,
                ),
                itemBuilder: (_, i) {
                  final container = Container(
                    color: colors[random.nextInt(colors.length)],
                    width: (size.width - 24) / 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.black,
                          height: 75,
                        ),
                        MyListTile(
                          title: faker.person.name(),
                          subtitle: faker.lorem.sentence(),
                          count: (i) => builds += i,
                        ),
                      ],
                    ),
                  );
                  if (i == 0) {
                    return Builder(builder: (ctx) {
                      print("first container built");
                      return container;
                    });
                  }
                  return container;
                });
          }),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String title, subtitle;
  final Function(int) count;

  MyListTile({@required this.title, @required this.subtitle, this.count});

  @override
  Widget build(BuildContext context) {
    count(1);
    return ListTile(
      title: Text(title, maxLines: 1),
      subtitle: Text(subtitle, maxLines: 2),
    );
  }
}
