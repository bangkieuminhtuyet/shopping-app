import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int seletedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/ 2),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          seletedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: seletedIndex == index ? kTextColor : kTextLightColor,
                ),
              ),
            Container(
              margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
              width: 30,
              height: 2,
              color: seletedIndex == index ? kTextColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
