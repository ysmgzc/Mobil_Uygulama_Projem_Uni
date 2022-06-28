import 'package:flutter/material.dart';
//erkek kategorisinin tasarlanacağı sayfa
class Man extends StatefulWidget {
  Man({Key? key}) : super(key: key);

  @override
  State<Man> createState() => _ManState();
}

class _ManState extends State<Man> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Erkek"),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
