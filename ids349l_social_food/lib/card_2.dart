import 'package:flutter/material.dart';
import 'package:ids349l_social_food/author_card.dart';
import 'package:ids349l_social_food/social_food_theme.dart';
import 'dart:math' as math;

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String sidetext = 'Smoothies';
  final String bottomtext = 'Recipe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
          constraints: const BoxConstraints.expand(
              width: 350,
              height: 450
          ),
        child: Stack(
          children: [
            Transform.rotate(
              angle: - math.pi / 2,
              child: Stack(
                children: [
                  Positioned(
                  top: 58,
                  left: 20,
                  child: Text(sidetext,
                    style: SocialFoodTheme.lightTextTheme.displayLarge),
                ),
                ]
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(bottomtext,
                style: SocialFoodTheme.lightTextTheme.displayLarge,
              ),
            ),
            AuthorCard(

            )
          ],
        )
      )
    );
  }
}
