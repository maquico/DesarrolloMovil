
import 'package:flutter/material.dart';
import 'package:ids349l_social_food/social_food_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key});

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool isLiked = false;
  final String author_name = 'Mike Katz';
  final String author_description = 'Smoothie Connoisseur';
  final String author_pic = 'author_katz.jpeg';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 4.0, // Adjust the width of the border
          ),
        ),

        child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/$author_pic'),
          ),
        ),
          SizedBox(width: 14.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  author_name,
                    style: SocialFoodTheme.lightTextTheme.titleLarge
                ),
                SizedBox(height: 8.0),
                Text(
                  author_description,
                  style: SocialFoodTheme.lightTextTheme.displaySmall,
                  ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
          ),
        ],
      ),
    );
  }
}
