//import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:proje/categories.dart';
import 'package:proje/menu2.dart';
import 'package:proje/constants.dart';
import 'package:proje/paketler/components/search_form.dart';
import 'paketler/components/new_arival.dart';
import 'paketler/components/popular.dart';

//import 'package:proje/models/screen/splash/splash_screen.dart';
//import 'package:proje/models/Category.dart';
//import 'package:proje/paketler/components/product.dart';
//import 'package:proje/routs.dart';
//import 'paketler/components/product_card.dart';
//import 'paketler/components/section_title.dart';
//import 'package:proje/paketler/contact.dart';
//import 'package:proje/paketler/notifications.dart';
//import 'package:proje/menu.dart';
//import 'dart:async';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  @override
   static String routeName = "/sing_in";
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  TextEditingController editingController = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget? aktifSekme;
  int sekme = 0;
  //void get context => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Menu2(),
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0, //appbarın altındaki golgeyi 0 yapar
          backgroundColor: Colors.grey.shade200,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.purple.shade900,
              ),
              Text(
                "ecomart",
                style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavMenu(),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SearchForm(),
                ),
                const Categories(),
                const SizedBox(
                  height: defaultPadding,
                ),
                const NewArrival(),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Popular(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.grey.shade200, //bottomnavmenudeki arkaplan rengini degişir
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.purple.shade900), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined, color: Colors.purple.shade900), label: 'Sepet'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, color: Colors.purple.shade900), label: 'Favoriler'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline, color: Colors.purple.shade900), label: 'Profil'),
        ],
        currentIndex: sekme,
        onTap: (int i) {
          switch (i) {
            case 0:
              print("Anasayfa");
              setState(() {
                sekme = 0;
                aktifSekme = anasayfa();
              });
              break;
            case 1:
              print("Sepet");
              setState(() {
                sekme = 1;
                aktifSekme = sepet();
              });
              break;
            case 2:
              print("Favoriler");
              setState(() {
                sekme = 2;
                aktifSekme = favoriler();
              });
              break;
            case 3:
              print("Profil");
              setState(() {
                sekme = 3;
                aktifSekme = profil();
              });
              break;
          }
        },
        type: BottomNavigationBarType.fixed, // 3 ten fazla olursa fixed azveya esit olursa shifting
        //fixedColor: Colors.white, //alttaki butona tıladıgında beyaz yapar
      ),
    );
  }

  Widget anasayfa() {
    return Center(
      child: Text(
        "Anasayfa",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget sepet() {
    return Center(
      child: Text(
        "Sepet",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget favoriler() {
    return Center(
      child: Text(
        "Favoriler",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget profil() {
    return Center(
      child: Text(
        "Profil",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}









      /*    SizedBox(
      height: 50,
    ),
    Center(
      child: Text(
        'Merhaba',
        style: TextStyle(color: Colors.purple.shade900, fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 24),
      child: aktifSekme != null ? aktifSekme : anasayfa(),
    )
              ],*/
  