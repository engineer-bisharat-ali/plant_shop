import 'package:flutter/material.dart';
import 'package:plant_shop/Constants/colors.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';
import 'package:plant_shop/pages/plants_home_screen.dart';

// ignore: must_be_immutable
class OnboardingNextArrow extends StatelessWidget {
  PageController controller;
  int currentIndex;
  OnboardingNextArrow({super.key, required this.currentIndex , required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () async {
          if (currentIndex == pOnBording.length - 1) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlantsHomeScreen(),
                ));
          } else {
            await controller.nextPage(
                duration: const Duration(microseconds: 300),
                curve: Curves.easeInOut);
          }
        },
        child: const CircleAvatar(
          backgroundColor: primaryColor,
          radius: 35,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
