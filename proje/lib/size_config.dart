import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}
//ekran boyutuna göre orantılı yüksekliği alın
double orantiliEkranYuksekligi(double inputHeight){
  double? screenHeight = SizeConfig.screenHeight;
  //812, tasarımcının kullandığı düzen yüksekliğidir
  return(inputHeight/812.0)*screenHeight!;
}

//ekran boyutuna göre orantılı genişliği alın
double orantiliEkranGenisligi(double inputWidth){
  double? screenWidth = SizeConfig.screenWidth;
  //375, tasarımcının kullandığı düzen yüksekliğidir
  return(inputWidth/375.0)*screenWidth!;
}
