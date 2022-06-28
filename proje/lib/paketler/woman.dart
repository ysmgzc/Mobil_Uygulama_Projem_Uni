import 'package:flutter/material.dart';
//kadın kategorisinin tasarlanacağı sayfa
class Woman extends StatefulWidget {
  Woman({Key? key}) : super(key: key);

  @override
  State<Woman> createState() => _WomanState();
}

class _WomanState extends State<Woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Kadın"),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
