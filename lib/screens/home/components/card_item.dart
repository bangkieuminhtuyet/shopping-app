import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product_list.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press; //khai báo nếu bị lỗi void ! 

  //thẻ con nhận các props để sử dụng. 
  const ItemCard({
    Key? key,
    this.product, 
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 176, // set height để cân vào nhau 
                width: double.infinity, // set wwidth dài vô tận để nó tự flex đủ cái chiều ngang của từng grid item.
                padding: const EdgeInsets.all(kDefaultPaddin), // padding đều nhau . 
                decoration: BoxDecoration(
                  color: product?.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product?.id}",
                  child: Image.asset('${product?.image}', // set wwidth height cho cái ảnh
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              '${product?.title}',
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '\$ ${product?.price}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
