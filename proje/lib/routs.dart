
import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:proje/home_page.dart';
import 'package:proje/models/screen/splash/splash_screen.dart';
import 'package:proje/screens/forgot_password/forgot_password.dart';
import 'package:proje/sing_up/sing_up_screen.dart';
import 'models/screen/sign_in/sign_in_screen.dart';
//import 'package:proje/screens/sing_up/sing_up_screen.dart';
//tum routerlrımız burada olacak
//splashScren(açılış giriş) ekranımızı yönlendirir
final Map< String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  SingUpScreen.routeName:(context) => SingUpScreen(), //KAydol ekranı
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  HomePage.routeName:(context) => HomePage(),
  //_LoginHome.routeName: (context) => _LoginHome()
};

