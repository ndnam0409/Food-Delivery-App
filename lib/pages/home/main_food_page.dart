import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //  showing the header
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column( 
                    children: [
                      BigText(text: "Vietnam", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Binh Duong", color: Colors.black54),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ), 
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 43,
                      height: 43,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              )
            )
          ),
          // showing the body
          const Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ]
      )
    );
  }
}