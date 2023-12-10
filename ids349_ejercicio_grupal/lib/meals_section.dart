import 'package:flutter/material.dart';

class MealsSection extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/hamburger.jpeg",
    "assets/images/cake.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
    "assets/images/drink.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150.0,

          child: Row(
            children: [
              // ListView.builder of circle avatars
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      // Adjust the padding as needed
                      child: CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage(imagePaths[index]),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox with Stack of icons
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Positioned(
                          top: 0.0, // Adjust position as needed
                          child: Icon(Icons.cake),
                        ),
                        Positioned(
                          bottom: 0.0, // Adjust position as needed
                          child: Icon(Icons.star_border),
                        ),
                        Positioned(
                          bottom: 0.0, // Adjust position as needed
                          child: Icon(Icons.music_note),
                        ),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
