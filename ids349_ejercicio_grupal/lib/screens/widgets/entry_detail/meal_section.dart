import 'package:flutter/material.dart';

class MealSection extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/hamburger.jpeg",
    "assets/images/cake.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
  ];

  MealSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 100.0,
          child: Row(
            children: [
              // ListView.builder of circle avatars
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 8.0);
                    if (index == 0) {
                      padding = const EdgeInsets.only(right: 8.0);
                    }
                    return Padding(
                      padding: padding,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage(imagePaths[index]),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox with Stack of icons
              const SizedBox(
                width: 70.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.only(
                       right: 1.0), // Adjust padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.cake),

                      Icon(Icons.star_border),

                      Icon(Icons.music_note),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}