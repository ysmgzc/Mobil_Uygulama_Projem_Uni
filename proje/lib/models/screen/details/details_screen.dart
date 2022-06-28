import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proje/constants.dart';
import 'package:proje/paketler/components/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        elevation: 0, //appbarın altındaki golgeyi 0 yapar
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "proje/assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image, height: MediaQuery.of(context).size.height * 0.4, // %40
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                  defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding), //2 cm ustten bosluk
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //colors yazısını basa aldı
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(product.title, style: Theme.of(context).textTheme.headline6),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "%100 Pamuk Bisiklet Yaka Yumuşacık kumaşı ile yaz ayları başta olmak üzere her mevsim için uygundur. Premium pamuktan üretilmiştir. Uzun süreli kullanım ömrüne sahiptir. Bisiklet yakalı, düşük omuzlu, geniş kesimlidir. T-Shirt Elbise Oversize kalıptır.",
                    ),
                  ),
                  const Text(
                    "Renk",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: defaultPadding/2,),
                  Row(
                    children: [
                      ColorDot(
                        color: const Color(0x3f9493),
                        isActive: false,
                        press: (){},
                      ),
                      ColorDot(
                        color: const Color(0xa7419c),
                        isActive: true,
                        press: (){},
                      ),
                      ColorDot(
                        color: const Color(0xd1b63d),
                        isActive: false,
                        press: (){},
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding*1.5),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple.shade900,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Sepete Ekle"),
                        ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, 
    required this.color, 
    required this.isActive, 
    required this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border: Border.all(color: isActive ? Colors.grey.shade200 : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
