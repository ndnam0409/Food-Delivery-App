import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_icons.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit:  BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food2.jpg",
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20, 
            right:20,
            top: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.arrow_back),
                AppIcons(icon: Icons.shopping_cart_outlined),
              ],
            )
          )
        ]
      )
    );
  }
}