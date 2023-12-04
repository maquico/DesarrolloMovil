import 'package:flutter/material.dart';
import 'social_food_theme.dart';
import 'Home.dart';

void main() => runApp(SocialFoodApp());

class SocialFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SocialFoodTheme.darkTheme(),
      title: 'Material App',
      home: Home(),
    );
  }
}


