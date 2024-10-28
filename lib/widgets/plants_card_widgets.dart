import 'package:flutter/material.dart';
import 'package:plant_shop/model%20class/plant_model.dart';
import 'package:plant_shop/pages/plant_detail_screen.dart';

class PlantsCardWidgets extends StatelessWidget {
  final Plant plant;
  const PlantsCardWidgets({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PlantDetailScreen(plant: plant),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.06), // Responsive borderRadius
        ),
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenWidth * 0.02), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: plant.image,
                child: Image.asset(
                  plant.image,
                   // Responsive image width
                  
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // Responsive spacing
            Text(
              plant.name,
              style: TextStyle(
                fontSize: screenWidth * 0.045, // Responsive font size
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
            if (plant.category != null)
              Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.005),
                child: Text(
                  plant.category!,
                  style: TextStyle(
                    fontSize: screenWidth * 0.035, // Responsive font size
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            SizedBox(height: screenHeight * 0.01),
            Row(
              children: [
                Text(
                  "\$${plant.price}",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045, // Responsive font size
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: screenWidth * 0.05, // Responsive circle radius
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: screenWidth * 0.05, // Responsive icon size
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
