import 'package:flutter/material.dart';
import 'package:proje/home_page.dart';
import 'package:proje/models/screen/splash/splash_screen.dart';
import 'package:proje/paketler/body.dart';
import 'models/screen/sign_in/sign_in_screen.dart';
import 'routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yeşim Gezici',
      theme: ThemeData( 
      backgroundColor: Colors.white,
    ),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}





/*bool isFirst = true; 
void main() {
  runApp(MaterialApp(
    title: 'Hoşgeldiniz',
    debugShowCheckedModeBanner: false,
    theme: ThemeData( 
      backgroundColor: Colors.white,
    ),
   /*  initialRoute: SplashScreen.routeName,
      routes: routes,*/
    home: isFirst ? SplashScreen() : SignInScreen(),
  )
      
      );
}*/

/* class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoşgeldiniz',
      theme: ThemeData( 
      backgroundColor: Colors.white,
      
    ),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}*/