import 'package:flutter/material.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';

import 'package:plant_shop/pages/plants_home_screen.dart';

class OnboardingCustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final BuildContext parentContext;

  const OnboardingCustomAppbar({super.key, required this.currentIndex, required this.parentContext});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        if (currentIndex < pOnBording.length - 1)
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey.shade800,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                parentContext,
                MaterialPageRoute(
                  builder: (context) => const PlantsHomeScreen(),
                ),
              );
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black54,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Default AppBar height
}
