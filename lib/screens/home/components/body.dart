import 'package:flutter/material.dart';
import 'package:shopping_app/common/common.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product_list.dart';
import 'package:shopping_app/screens/details/components/details_screen.dart';
import 'package:shopping_app/screens/home/components/card_item.dart';
import 'package:shopping_app/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Womman',
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index], // truyền dữ liệu vào thẻ con !
              press: () async {
                navigateToScreen(
                  context: context,
                  screen: DetailsScreen(product: products[index]),
                );
              },
            ),
          ),
        )),
      ],
    );
  }
}
