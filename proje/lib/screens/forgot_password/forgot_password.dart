import 'package:flutter/material.dart';
import 'package:proje/screens/forgot_password/body.dart';

// şifremi unuttum sayfasının iskelet kısmı

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
           title: Row( //satır 
             mainAxisAlignment: MainAxisAlignment.center, // ikonu yazıyı ortaladık
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
        /*title: Text("Şifremi Unuttum",
         style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold),
                 textAlign: TextAlign.center,
        ),*/
        
      ),
      body: Body(),
    );
  }
}