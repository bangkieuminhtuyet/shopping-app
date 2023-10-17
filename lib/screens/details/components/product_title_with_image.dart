import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product_list.dart';

class ProductWithTitleImage extends StatelessWidget {
  const ProductWithTitleImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Arisoracstic Hand Bag',
              style: TextStyle(color: Colors.white, fontSize: 12)),
          Text('${product.title}',
              style: const TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: [
              RichText(
                  // chắc dùng để khai báo nhiều thể loại text cùng một cục !
                  text: TextSpan(
                children: [
                  const TextSpan(text: "Price \n"), // xuống dòng !
                  TextSpan(
                      text: "\$ ${product.price}",
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              )),
              const SizedBox(width: kDefaultPaddin),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  '${product.image}',
                  fit: BoxFit
                      .fitWidth, // dùng để fit ảnh theo chiều ngang -> giống object fit
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
