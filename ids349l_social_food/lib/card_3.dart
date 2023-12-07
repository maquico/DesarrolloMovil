import 'package:flutter/material.dart';
import 'package:ids349l_social_food/social_food_theme.dart';

class Card3 extends StatelessWidget {
  String title = "Recipe Trends";
  List<String> chipsLabels = ["Healthy", "Vegan", "Carrots", "Carrots"];
  Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/mag2.png'),
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6)
                        //border radius
                  ),
                ),
                Positioned(
                  top: 10,
                    left: 10,
                    child: Icon(Icons.book, size: 40.0,)
                ),
                Positioned(
                  top: 70,
                  left: 10,
                  child: Text(title,
                    style: SocialFoodTheme.darkTextTheme.displayLarge,
                  ),
                ),
                Center(
                  child: Wrap(
                    children: [
                      Chip(
                        label: Text(chipsLabels[0]),
                        onDeleted: (){},
                      ),
                      Chip(
                        label: Text(chipsLabels[0]),
                        onDeleted: (){},
                      ),
                      Chip(
                        label: Text(chipsLabels[0]),
                        onDeleted: (){},
                      ),
                      Chip(
                        label: Text(chipsLabels[0]),
                        onDeleted: (){},
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
