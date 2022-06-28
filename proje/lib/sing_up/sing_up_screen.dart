import 'package:flutter/material.dart';
import 'package:proje/sing_up/body.dart';
//kaydol ekranı
class SingUpScreen extends StatelessWidget {
  static String routeName = "/sing_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KAYDOL"),
      ),
     // body: Body(),
    );
  }
}
