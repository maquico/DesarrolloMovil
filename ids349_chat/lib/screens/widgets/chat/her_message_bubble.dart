

import 'package:flutter/material.dart';

import '../../../entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    //El tema toma el theme que tenga el padre (se le pasa por el context), si no hay toma el default
    final colors = Theme.of(context).colorScheme;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors.secondary //Color primario de mi paleta
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  message.text,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
          ),
          SizedBox(
            height: 5,
          ),

          ImageBubble(imageURL: message.imageURL),
          SizedBox(height: 5)
        ]
    );
  }
}

class ImageBubble extends StatelessWidget {
  final imageURL;
  const ImageBubble({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Rounded Rectangle
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
            imageURL,
            width: size.width * 0.70,
            height: 150,
            fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            else {
              return Container(
                width: size.width * 0.70,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text('Writing a Message'),
                ),
              );
            }
          }
        ),
    );

  }
}

