import 'package:flutter/material.dart';
import 'package:ids349l_social_food/social_food_theme.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'categoria';
  final String description = 'descripcion klk jevisimo';
  final String title = 'El titulo';
  final String chef = 'Juan Guarnizo';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover
          ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Text(category,
              style: SocialFoodTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              top: 20,
              child: Text(title,
                style: SocialFoodTheme.darkTextTheme.displayLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(chef,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
