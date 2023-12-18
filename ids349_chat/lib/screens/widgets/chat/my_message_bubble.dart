

import 'package:flutter/material.dart';

import '../../../entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    //El tema toma el theme que tenga el padre (se le pasa por el context), si no hay toma el default
    final colors = Theme.of(context).colorScheme;
    //Crear un objeto de tipo Provider
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
              child: Text(message.text,
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
