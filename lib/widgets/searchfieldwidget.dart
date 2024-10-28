import 'package:flutter/material.dart';

class Searchfieldwidget extends StatelessWidget {
  const Searchfieldwidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 6,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Plant",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                    letterSpacing: -.5,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  prefixIcon: const Icon(Icons.search)),
            ),
          );
  }
}