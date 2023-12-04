

import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //El tema toma el theme que tenga el padre (se le pasa por el context), si no hay toma el default
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colors.primary //Color primario de mi paleta
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text("Mensaje a mi amor",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            )
        ),
        SizedBox(
          height: 5,
        )
      ]
    );
  }
}
