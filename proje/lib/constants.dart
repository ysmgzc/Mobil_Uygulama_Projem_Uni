import 'package:flutter/material.dart';
import 'size_config.dart';

//renk gibi belirli özellikleri buradan belirledik
//baska kısımlarda kullanırken verileri burdan cekiyoruz kısaca ayrı ayrı tanımlamamıza gerek kalmıyo

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;
const kPrimaryColor = Color(0xFF4A148C); //purple shade 900
const kPrimaryLightColor = Color(0xFFFFFFFF); //arkaplan beyaz rengi
const kPrimaryGradientColor = LinearGradient(
  //renkgeçişi
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF4527A0), Color(0xFF4A148C)],
);
const kSecondaryColor = Color(0xFFEEEEEE); //greyshade200
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200); //animasyon süresi

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lüften E-Mail adresinizi giriniz. ";
const String kInvalidEmailError = "Lütfen geçerli E-Mail adresinizi girin.";
const String kPassNullError = "Lütfen şifrenizi giriniz.";
const String kShortPassError = "Şifre çok kısa.";
const String kMatchPassError = "Şifreler eşleşmiyor.";


final headingStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

/*const kPrimaryColor = Colors.grey.shade200;
const kTextColor = Colors.black;
const kBackgroundColor = Color.white;

const double kDefaultPadding = 20.0;*/

