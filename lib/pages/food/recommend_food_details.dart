import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icons.dart';
import 'package:food_delivery/widgets/big_text.dart';

class RecommendFoodDetails extends StatelessWidget {
  const RecommendFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                  AppIcons(icon: Icons.clear),
                  AppIcons(icon: Icons.shopping_cart_outlined)
              ]
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20), 
              child: Container(
                color: Colors.white,
                child: Center(child: BigText(text: "Chinese healthy food")),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
              )
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food3.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              ""
            )
          )
        ]
      )
    );
  }
}