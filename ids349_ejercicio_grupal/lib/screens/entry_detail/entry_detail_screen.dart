import 'package:flutter/material.dart';
import '../widgets/entry_detail/gift_section.dart';
import '../widgets/entry_detail/weather_section.dart';
import '../widgets/entry_detail/meal_section.dart';
import '../widgets/shared/app_bar_title.dart';

class EntryDetail extends StatelessWidget {
  const EntryDetail({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(titleText: "Layouts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/regalos.jpg"),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        title,
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        text,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.1,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: MeteoSection(),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.3,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: GiftSection(),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MealSection(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

