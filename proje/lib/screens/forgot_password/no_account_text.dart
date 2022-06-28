import 'package:flutter/material.dart';
import 'package:proje/constants.dart';
import 'package:proje/sing_up/sing_up_screen.dart';
import 'package:proje/size_config.dart';

// şifremi unuttum sayfasının en alt kısmındaki kaydol kısmı

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hesabınız yok mu? ",
          style: TextStyle(fontSize: orantiliEkranGenisligi(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SingUpScreen.routeName),
          child: Text(
            "Kaydol",
            style: TextStyle(
                fontSize: orantiliEkranGenisligi(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}