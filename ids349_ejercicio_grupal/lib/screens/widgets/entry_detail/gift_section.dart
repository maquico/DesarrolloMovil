import 'package:flutter/material.dart';


class GiftSection extends StatelessWidget {
  const GiftSection({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme =Theme.of(context);
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 9,
      runSpacing: 0,
      children: [
        for (int i = 1; i <= 7; i++)
          Chip(
            label: Text(
              'Gift $i',
              style: theme.textTheme.labelSmall,
            ),
            avatar: const Icon(
              Icons.card_giftcard,
              color: Colors.blue,
              size: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: const BorderSide(color: Colors.grey),
            ),
            backgroundColor: Colors.grey.shade100,
          ),
      ],
    );
  }
}