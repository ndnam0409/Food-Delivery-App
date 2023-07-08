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
            toolbarHeight: 70,
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
                child: Center(child: BigText(text: "Italian healthy salad", size : 22)),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  )
                ),
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Italian Salad is a delightful and refreshing culinary creation that embodies the essence of Mediterranean cuisine. Bursting with vibrant colors, textures, and flavors, this salad is a harmonious blend of fresh vegetables, aromatic herbs, and savory ingredients. At its core, Italian Salad showcases a medley of crisp and crunchy lettuce leaves such as romaine, radicchio, and arugula, providing a satisfying base for the dish. These greens offer a refreshing backdrop, lending a light and crisp texture to each bite. Complementing the greens are an array of colorful vegetables that add both visual appeal and a spectrum of tastes. Succulent cherry tomatoes, vibrant bell peppers, thinly sliced cucumbers, and red onions come together to create a beautiful tapestry of flavors, with each ingredient contributing its own distinct character to the overall composition. To elevate the salad's taste and aroma, generous shavings of aged Parmesan cheese are sprinkled on top. The nutty and rich flavors of the cheese provide a delightful contrast to the fresh vegetables, creating a harmonious balance. No Italian salad is complete without the inclusion of delectable cured meats. Thinly sliced prosciutto, salami, or pancetta are often added, infusing the salad with their savory and smoky notes. These cured meats lend a touch of indulgence, making each bite a satisfying experience. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. Italian Salad is a versatile dish that can be enjoyed as a light lunch, a refreshing side dish, or a starter to a larger meal. Its vibrant colors, fresh ingredients, and harmonious flavors make it a delightful representation of the bountiful and healthy Mediterranean culinary tradition. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble. A key component of Italian Salad is the dressing, which ties together the various elements and enhances their flavors. A classic vinaigrette made with extra virgin olive oil, balsamic vinegar, garlic, and a medley of Italian herbs like oregano and basil is drizzled generously over the salad. The dressing adds a tangy and herbaceous dimension, tying all the ingredients together into a cohesive and delicious ensemble.",
                  )
                )
              ]
            )
          )
        ]
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20*2.5,
              right: 20*2.5,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(
                  backgroundColor: AppColors.mainColor, 
                  icon: Icons.remove, 
                  iconColor: Colors.white,
                  iconSize: 30,
                ),
                BigText(text: "\$10.05" + " X " + "0", color: AppColors.mainBackColor),
                AppIcons(
                  backgroundColor: AppColors.mainColor, 
                  icon: Icons.add, 
                  iconColor: Colors.white,
                  iconSize: 24,
                ),
              ]
            ),
          ),
          Container(
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
                    Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: BigText(text: "\$10.05 | Add to cart"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColor,
                ),
              )
            ],
          )
        ),
      ]
      ),
    );
  }
}