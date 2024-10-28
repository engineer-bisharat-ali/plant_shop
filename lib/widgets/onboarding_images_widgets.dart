import 'package:flutter/material.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';

// ignore: must_be_immutable
class OnboardingImagesWidgets extends StatelessWidget {
  int placeForImage;
  OnboardingImagesWidgets({super.key, required this.placeForImage});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.5, // Adjust based on screen size
      child: Image.asset(
        pOnBording[placeForImage].image,
        fit: BoxFit.cover,
        width: screenWidth * 0.9, // Maintain aspect ratio
      ),
    );
  }
}
