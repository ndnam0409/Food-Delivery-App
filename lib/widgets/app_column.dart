import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(text: text, size: 22),
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
                SmallText(text: "345 comments")
            ],
        ),
        const SizedBox(height: 15), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Excellent",  
              iconColor: AppColors.iconColor1,
            ),
                          
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "2.1km",  
              iconColor: AppColors.mainColor,
            ),
                          
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "12min",  
              iconColor: AppColors.iconColor2,
            )
          ]
        )
      ],
    );
  }
}