import 'package:flutter/material.dart';
import 'package:plant_shop/Constants/colors.dart';
import 'package:plant_shop/model%20class/plant_model.dart';

class PlantDetailScreen extends StatefulWidget {
  final Plant plant;
  const PlantDetailScreen({super.key, required this.plant});

  @override
  State<PlantDetailScreen> createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: AppBar(
        backgroundColor: myBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.37, // Responsive height
                  child: PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    onPageChanged: (value) => setState(() {
                      currentIndex = value;
                    }),
                    itemBuilder: (context, index) => Hero(
                      tag: widget.plant.image,
                      child: Image.asset(
                        widget.plant.image,
                        
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: screenWidth * 0.1, // Positioned relative to screen size
                  child: Column(
                    children: List.generate(
                      3,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.only(bottom: 5),
                        width: 7,
                        height: index == currentIndex ? 20 : 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: index == currentIndex
                              ? primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1), // Responsive padding
              child: Text(
                widget.plant.name,
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: const Text(
                "Plansts make your we with minimal and nappy love the plants more and enjoy life.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  letterSpacing: -.5,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: screenHeight * 0.30, // Responsive height
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.1,
          vertical: screenHeight * 0.03,
        ),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                plantsInfo(
                  Icons.height,
                  "Height",
                  widget.plant.height,
                  screenWidth,
                ),
                plantsInfo(
                  Icons.device_thermostat,
                  "Temperature",
                  widget.plant.temparature,
                  screenWidth,
                ),
                plantsInfo(
                  Icons.yard_outlined,
                  "Pot",
                  widget.plant.pot,
                  screenWidth,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: -1,
                      ),
                    ),
                    Text(
                      "\$${widget.plant.price}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 1,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: cartButtonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column plantsInfo(IconData icon, String name, String value, double screenWidth) => Column(
        children: [
          Icon(
            icon,
            size: screenWidth * 0.1, // Responsive icon size
            color: Colors.white,
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: -1,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade200,
            ),
          ),
        ],
      );
}
