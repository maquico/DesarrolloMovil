//Sección hecha por Huan Hao Wu Wu 1104326 - 8/12/2023

import 'package:flutter/material.dart';

class MeteoSection extends StatelessWidget {
  const MeteoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.sunny,
              color: Colors.orange,
            )
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "81° Clear",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "4500 San Alpho Drive, Dallas, TX United States",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
