import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/home/components/body.dart';
// ignore: import_of_legacy_library_into_null_safe

//stle -> start nhanh cái StateLessWidget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() { 
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor, 
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/cart.svg",
            color: kTextColor,
            ),
      ),
      const SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
