import 'package:flutter/material.dart';

import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;
  
  //get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height : size.height,
      child: Column(
        children: [
          Spacer(),
          Text(
            "ECOMART",
            style: TextStyle(
              fontSize: orantiliEkranGenisligi(36),
              //color: kPrimaryColor,
              color: Colors.purple.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Text(text, textAlign: TextAlign.center,),
          Spacer(flex: 2),
          Container(
            width: 300,height: 300,
            child: Image.asset(
              image,
            ),
          ),
        ],
      ),
    );
  }
}