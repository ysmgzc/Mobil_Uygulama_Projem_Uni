import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:proje/constants.dart';
import 'package:proje/models/screen/sign_in/sign_in_screen.dart';
import 'package:proje/size_config.dart';
import '../components/default_button.dart';
import 'components/splash_content.dart';

//uygulama ilk indiğinde ekrana gelecek olan kısım

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "text": "Ecomart'a hoşgeldiniz.",
      "image": "assets/fotolar/Ekran_görüntüsü_2022-05-27_005848-removebg-preview.png",
    },
    {
      "text": "Dilediğiniz ürün tek tıkla ayağınıza gelsin.",
      "image": "assets/fotolar/menu-removebg-preview.png",
    },
    {
      "text": "Hadi alışveriş yapalım",
      "image": "assets/fotolar/menu2-removebg-preview-removebg-preview.png",
    },
  ];
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: SplashContent(
                        //ekranı sola kaydırılıp diğer ekrana geçiş
                        image: splashData[index]["image"],
                        text: splashData[index]['text'],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: orantiliEkranGenisligi(20)),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(flex: 3),
                        DefaultButton(
                          text: "İleri",
                          press: () {
                             if (pageController.page!.toInt() + 1 == 3) {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInScreen()));
                            } else {
                              pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                            }
                          },
                        ),
                        Spacer(),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

/*import 'package:proje/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10), //arama motorunun altındaki gölgelendirme
                        blurRadius: 50, //golgeyi bulanıklastırma
                        color: kPrimaryColor.withOpacity(0.23)),
                  ]),
                )),
          ],
        ),
      ),
    ]);
  }
}*/
