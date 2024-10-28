import 'package:flutter/material.dart';
import 'package:plant_shop/Constants/colors.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';


// ignore: must_be_immutable
class OnboardingTittle extends StatelessWidget {
  int index;
  OnboardingTittle({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: pOnBording[index].title,
              style: TextStyle(
                fontSize: screenWidth * 0.09, // Dynamic font size
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
             TextSpan(
              text: " Plants",
              style: TextStyle(
                fontSize: screenWidth * 0.09,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
