import 'package:flutter/material.dart';

class FilterdIcon extends StatelessWidget {
  const FilterdIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: const Icon(Icons.tune),
            ),
          );
  }
}