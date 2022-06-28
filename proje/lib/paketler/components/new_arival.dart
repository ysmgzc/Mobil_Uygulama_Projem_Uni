import 'package:flutter/material.dart';
import 'package:proje/constants.dart';
import 'package:proje/models/screen/details/details_screen.dart';
import 'product.dart';
import 'product_card.dart';
import 'section_title.dart';

// ana sayfa kısmında oluşturduğumuz yeni gelenler kısmı 

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          title: "Yeni Gelenler",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: demo_product[index],)));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
