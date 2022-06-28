import 'package:flutter/material.dart';
//iletişim sayfası burada tasarlanacak
class Iletisim extends StatefulWidget {
  Iletisim({Key? key}) : super(key: key);

  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("İletişim"),
      ),
    );
  }
}
