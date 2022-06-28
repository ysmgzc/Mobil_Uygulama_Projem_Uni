import 'package:flutter/material.dart';
import 'package:proje/models/screen/sign_in/login_home.dart';

import '../../../screens/forgot_password/forgot_password.dart';
import '../../../size_config.dart';
//girişyap ve sifremi unuttum kısmı

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //   Container, alt widget'ını özelleştirmenize olanak tanıyan bir widget sınıfıdır.
        //Bazı özelliklerini adlandırmak için doldurma, kenar boşlukları, kenarlıklar veya
        //arka plan rengi eklemek istediğinizde kullanın.
        decoration: BoxDecoration(
          //containerimizin rengi
          color: Colors.white,
        ),
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          // cocukları (sayfayı) kaydırabilir erkan haline getirir
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.asset("fotolar/loginProfil.png"),
              SizedBox(height: SizeConfig.screenHeight! * 0.04,),
              Container(
                width: 200,
                height: 100,
                child: Image.asset(
                  'assets/fotolar/loginProfil.png',
                  width: 100,
                  height: 100,
                  scale: 1,
                ),
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
             /* Container(
                   child: GestureDetector(
                    onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ForgotPasswordScreen(),
                           ),
                         );
                       },
                child: Text("Şifremi Unuttum"),
              ),
            
          ),*/
        ],
        ),
      ),
    ),
    );
  }
}
