import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //color: Colors.redAccent,
          height: 320,
          // The PageView.builder widget is used to create a scrollable list of children widgets.
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position){
            return _buildPageItem(position);
          }),
        ),
        Container(
          margin: const EdgeInsets.only(left: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle_notifications,
                    color: AppColors.mainColor,
                  ),
                  const SizedBox(width: 10),
                  BigText(text: "Popular", size: 18),
                  const SizedBox(width: 15),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width:150,
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/image/food2.jpg"
                                  )
                               )
                              ),
                            ),
                            Container(
                              height: 150,
                              width:180,
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Container(
                                child: Row(
                                    children: [
                                      const Icon(Icons.restaurant, size: 16),
                                      const SizedBox(width: 10),
                                      SmallText(text: "Grilled Lamb",size: 14)
                                    ],
                                  )
                              )
                            ),
                          ],
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 150,
                                width:150,
                                margin: const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/image/food3.jpg"
                                    )
                                 )
                                ),
                              ), 
                              Container(
                                height: 150,
                                width:170,
                                margin: const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Container(
                                child: Row(
                                    children: [
                                      const Icon(Icons.restaurant, size: 16),
                                      const SizedBox(width: 10),
                                      SmallText(text: "Italian Salad",size: 14),
                                      const SizedBox(width: 10),
                                    ],
                                  )
                              )
                              ),
                              
                            ]
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/image/food1.jpg"
                )
              )
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Roasted Chicken"),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(
                            Icons.star, 
                            size: 15,
                            color: AppColors.mainColor,
                          )),
                        ),
                        const SizedBox(width: 15),
                        SmallText(text: "5.0"),
                        const SizedBox(width: 15),
                        SmallText(text: "1234 comments")
                      ],
                    ), 
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.circle, 
                            color: Colors.orangeAccent, 
                            size: 12,
                          ),
                          const SizedBox(width: 8),
                          SmallText(text: "Excellent"),
                          const SizedBox(width: 25),
                          Icon(
                            Icons.location_on, 
                            color: AppColors.mainColor, 
                            size: 12,
                          ),
                          const SizedBox(width: 8),
                          SmallText(text: "12km"),
                          const SizedBox(width: 25),
                          const Icon(
                            Icons.timer,
                            color: Color.fromARGB(255, 232, 126, 126),
                            size: 12
                          ),
                          const SizedBox(width: 8),
                          SmallText(text: "32min"),
                        ]
                      ),
                    )
                  ],
                )
              )
            ),
          ),
      ]
    );
  }
}