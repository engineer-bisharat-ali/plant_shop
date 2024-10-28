import 'package:flutter/material.dart';
import 'package:plant_shop/Constants/colors.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';


// ignore: must_be_immutable
class IndicatorDots extends StatelessWidget {
  int activeIndex;
  IndicatorDots({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          pOnBording.length,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.only(right: screenWidth * 0.01),
            width: index == activeIndex ? screenWidth * 0.06 : screenWidth * 0.03,
            height: screenWidth * 0.02,
            decoration: BoxDecoration(
              color: index == activeIndex ? primaryColor : Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

