import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icons.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 400,
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
          // Icon widgets
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
          ),
          // Introduction of food
          Positioned(
            left: 0,
            right: 0,
            top: 390,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              decoration: const   BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: "Spaghetti - Italian's food"),
                  const SizedBox(height: 10),
                  BigText(text: "Introduce"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.star, 
                        size: 12, 
                        color: Colors.amberAccent,
                      ),
                      const SizedBox(width: 10),
                      BigText(text: "Best Seller", size: 15),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.star, 
                        size: 12, 
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SmallText(text: "Delicious, aromatic, and undeniably classic, Italian spaghetti is a mouthwatering pasta dish that has captivated the hearts and palates of people around the world. This culinary masterpiece embodies the essence of Italian cuisine, characterized by its simplicity, vibrant flavors, and the finest quality ingredients."),
                  const SizedBox(height: 10),
                  SmallText(text: "No matter the sauce, a generous sprinkle of freshly grated Parmigiano-Reggiano or Pecorino Romano cheese adds a touch of creaminess and tanginess, enhancing the overall taste profile of the dish."),
                  const SizedBox(height: 10),
                  SmallText(text: "Overall, spaghetti is a delightful and satisfying pasta dish that has stood the test of time, captivating people with its simplicity, versatility, and comforting flavors."),                
                ],
              )
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.only(top: 35,  bottom: 35, left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20 * 2),
            topRight: Radius.circular(20 * 2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  const SizedBox(width:5),
                  BigText(text: "0"),
                  const SizedBox(width: 5),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: BigText(text: "\$5 | Add to cart"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor,
              ),
            )
          ],
        )
      ),
    );
  }
}