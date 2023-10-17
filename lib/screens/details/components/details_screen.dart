import 'package:flutter/material.dart';
import 'package:shopping_app/models/product_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, product),
      body: Body(product: product),
    );
  }
}

AppBar buildAppBar(BuildContext context, Product product) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context) // quay về màn trước !
      ,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
        ),
      ),
      const SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
