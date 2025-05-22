import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: _doNothing,
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: _doNothing,
          ),
        ],
      ),
    );
  }

  static void _doNothing() {}
}

