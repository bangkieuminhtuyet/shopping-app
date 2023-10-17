import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product_list.dart';
import 'package:shopping_app/screens/details/components/buy_buttons.dart';
import 'package:shopping_app/screens/details/components/color_and_size.dart';
import 'package:shopping_app/screens/details/components/counter_with_heart.dart';
import 'package:shopping_app/screens/details/components/description.dart';
import 'package:shopping_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // width, height of all screen;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                          top: size.height * 0.12,
                          left: kDefaultPaddin,
                          right: kDefaultPaddin),
                      width: size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          ColorAndSize(product: product),
                          const SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          Description(product: product),
                          const SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          const CounterWithHeart(),
                          const SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          BuyButtons(product: product)
                        ],
                      )),
                  ProductWithTitleImage(product: product)
                ],
              ))
        ],
      ),
    );
  }
}
