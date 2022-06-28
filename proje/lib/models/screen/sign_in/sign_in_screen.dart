import 'package:flutter/material.dart';
import 'package:proje/models/screen/sign_in/body.dart';
import 'package:proje/models/screen/sign_in/login_home.dart';
import 'package:proje/size_config.dart';

//giriş sayfasının iskelet kısmı

class SignInScreen extends StatelessWidget {
  static String routeName = "/sing_in";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: Colors.grey.shade200,
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
         ),
         body: Body(),
         );
  }
}




















/*Container( 
    //   Container, alt widget'ını özelleştirmenize olanak tanıyan bir widget sınıfıdır. 
    //Bazı özelliklerini adlandırmak için doldurma, kenar boşlukları, kenarlıklar veya 
    //arka plan rengi eklemek istediğinizde kullanın.
           decoration: BoxDecoration( //containerimizin rengi
             color: Colors.white,
           ),
           margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView( // cocukları (sayfayı) kaydırabilir erkan haline getirir
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               //Image.asset("fotolar/loginProfil.png"),
                 Container(
                 width: 200,
                 height: 100,
                 child: Image.asset('assets/fotolar/loginProfil.png',width: 100,height: 100,scale: 1,),
               ),
               Center(
                 child: Text(
                   'Giriş Yap',
                   style: TextStyle(color: Colors.purple.shade900, fontSize: 27, fontWeight: FontWeight.bold),
                 ),
               ),
               Center(
                 child: LoginHome(),
               ),
               Container(
                 /*   child: GestureDetector(
                    onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => forgot_password(),
                           ),
                         );
                       },*/
                 child: Text("Şifremi Unuttum"),
               ),
             ],
           ),
         ),
         ),*/