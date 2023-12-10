import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.titleText,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.menu),
        const Spacer(),
        Text(titleText),
        const Spacer(),
        const Icon(Icons.cloud_outlined),
      ],
    );
  }
}