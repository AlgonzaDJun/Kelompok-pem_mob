import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/home/components/Body.dart';
import 'package:login_signup/home/components/icon_btn_with_counter.dart';
import 'package:login_signup/home/components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * (20 / 375),
        vertical: MediaQuery.of(context).size.width * (15 / 375),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          restaurantIcon(),
          searchField(),
          IconBtnWithCounter(
            iconSrc: Icons.shopping_cart,
            press: () {
              print("Cart Pressed");
            },
            numOfItems: 7,
          )
        ],
      ),
    );
  }
}

class restaurantIcon extends StatelessWidget {
  const restaurantIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * (46 / 375),
      width: MediaQuery.of(context).size.width * (46 / 375),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * (10 / 375)),
      decoration: BoxDecoration(
          color: kCupertinoModalBarrierColor.withOpacity(0.1),
          shape: BoxShape.circle),
      child: FittedBox(
        child: Icon(Icons.restaurant_menu),
      ),
    );
  }
}
