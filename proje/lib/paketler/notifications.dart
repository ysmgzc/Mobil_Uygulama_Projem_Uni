import 'package:flutter/material.dart';
//bildirimlerin tasarlanacağı sayfa
class Bildirimler extends StatefulWidget {
  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Bildirimler"),
      ),
    );
  }
}
