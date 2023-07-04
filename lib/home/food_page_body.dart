import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  // ignore: unused_field
  var _currentPageValue = 0.0;
  final _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

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
        )
      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()){
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);

    } else if (index == _currentPageValue.floor() + 1){
      var currentScale = _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);
      
    } else if (index == _currentPageValue.floor() - 1){
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, currTrans, 0);

    } else{
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)..setTranslationRaw(0, _height*(1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
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
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0,5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0),
                    ),
                  ]
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
                      const SizedBox(height: 15), 
                      Row(
                        children: [
                          IconAndTextWidget(
                            icon: Icons.circle_sharp,
                            text: "Excellent",  
                            iconColor: AppColors.iconColor1,
                          ),
                          const SizedBox(width: 32),
                          IconAndTextWidget(
                            icon: Icons.location_on,
                            text: "2.4km",  
                            iconColor: AppColors.mainColor,
                          ),
                          const SizedBox(width: 32),
                          IconAndTextWidget(
                            icon: Icons.access_time_rounded,
                            text: "15min",  
                            iconColor: AppColors.iconColor2,
                          )
                        ]
                      )
                    ],
                  )
                )
              ),
            ),
        ]
      ),
    );
  }
}