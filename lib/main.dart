import 'package:flutter/material.dart';
import 'package:list_builder/utils/tiles.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  final List _post = [
    'noman',
    'rafiu',
    'rawshan',
    'Rana',
    'Sumon',
    'Rifat',
    'Jackey Chan',
    'Salman Khan',
  ];

  MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.builder(
          itemCount: _post.length,
          itemBuilder: (BuildContext context, int index) {
            return Babies(
              child: _post[index],
            );
          },
        ),
      ),
    );
  }
}
