
import 'package:flutter/material.dart';
import 'package:plant_shop/model%20class/onboarding_model.dart';
import 'package:plant_shop/widgets/indicator_dots.dart';
import 'package:plant_shop/widgets/onboarding_custom_appbar.dart';
import 'package:plant_shop/widgets/onboarding_images_widgets.dart';
import 'package:plant_shop/widgets/onboarding_next_arrow.dart';
import 'package:plant_shop/widgets/onboarding_tittle.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int currentIndex = 0;
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: OnboardingCustomAppbar(currentIndex: currentIndex, parentContext: context),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) => setState(() {
                currentIndex = value;
              }),
              itemCount: pOnBording.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 5),
                    // Image of onboarding screen
                    OnboardingImagesWidgets(placeForImage: index),

                    const SizedBox(height: 15),

                    // Page indicator dots
                    IndicatorDots(activeIndex: currentIndex),

                    const SizedBox(height: 30),

                    // Onboarding Title
                    OnboardingTittle(index: index)
                  ],
                );
              },
            ),
          ),

          // Next Button (Onboarding Next Arrow Button)
          Expanded(
            flex: 2,
            child: OnboardingNextArrow(
              currentIndex: currentIndex,
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
