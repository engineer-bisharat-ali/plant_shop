import 'package:flutter/material.dart';
import 'package:plant_shop/Constants/colors.dart';
import 'package:plant_shop/model%20class/plant_model.dart';

import 'package:plant_shop/widgets/filterd_icon.dart';
import 'package:plant_shop/widgets/plants_card_widgets.dart';
import 'package:plant_shop/widgets/searchfieldwidget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlantsHomeScreen extends StatelessWidget {
  const PlantsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: AppBar(
        backgroundColor: myBackgroundColor,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text(
          "Search Products",
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/images/profile.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(22),
              child: Row(
                children: [
                  Searchfieldwidget(),
                  SizedBox(width: 10),
                  FilterdIcon(),
                ],
              ),
            ),
            MasonryGridView(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              children: [
                const Text(
                  "Found \n10 Results",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    height: 1.1,
                  ),
                ),

                for (var plant in plants)
                PlantsCardWidgets(plant: plant)
                  
              ],
            )
          ],
        ),
      ),
    );
  }
}
