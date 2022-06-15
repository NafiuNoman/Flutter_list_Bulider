import 'package:flutter/material.dart';

class Babies extends StatelessWidget {
  String child;

  Babies({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        // highlightColor: Colors.deepPurple,

        onTap: () {
          print('Clicked');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('THIS IS A SHANCKBAR')));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.transparent),
          height: 300.0,
          child: Center(
            child: Text(child,
                style: TextStyle(fontSize: 50.0, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
