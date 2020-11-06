import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'wrapper.dart';
import 'grid_view.dart';
import 'list_view.dart';

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
            final size = MediaQuery
                .of(ctx)
                .size;
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
            return ListViewExample(
              children: List.generate(500, (i) {
                return Container(
                  color: colors[random.nextInt(colors.length)],
                  width: (size.width - 24) / 2,
                  margin: const EdgeInsets.only(bottom: 8),
                  child: MyListTile(
                    title: faker.person.name(),
                    subtitle: faker.lorem.sentence(),
                    count: (i) => builds += i,
                  ),
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String title, subtitle;
  final Function(int) count;

  MyListTile({@required this.title, @required this.subtitle,
  this.count});

  @override
  Widget build(BuildContext context) {
    count(1);
    return ListTile(
      title: Text(title),
      subtitle: Text(title),
    );
  }
}
