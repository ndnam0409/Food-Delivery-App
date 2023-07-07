import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidget();
}

class _ExpandableTextWidget extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = 0.0;

  double getScreenHeight(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    textHeight = mediaQueryData.size.height;
    return textHeight;
  }


  @override
  void initState(){
    super.initState();
    if (widget.text.length > textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else { 
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? SmallText(text: firstHalf) : Column(
        children: [
          SmallText(text: hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf)),
          InkWell(
            // onTap(){
              
            // },
            child: Row(
              children: [
                SmallText(text: "Show more", color: AppColors.mainColor),
                Icon(Icons.arrow_drop_down, color: AppColors.mainColor)
              ]
            )
          )
        ]
      ) 
    );
  }
}