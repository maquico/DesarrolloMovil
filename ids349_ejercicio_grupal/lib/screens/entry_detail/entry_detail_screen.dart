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
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5, // Number of items including sections
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(height: 1, color: Colors.grey), // Divider
                  itemBuilder: (BuildContext context, int index) {
                    switch (index) {
                      case 0:
                        return Padding(
                          padding:
                          const EdgeInsets.only(top: 8.0, bottom: 4.0),
                          child: Text(
                            title,
                            style: theme.textTheme.displayLarge,
                          ),
                        );
                      case 1:
                        return Padding(
                          padding:
                          const EdgeInsets.only(top: 8.0, bottom: 12.0),
                          child: Text(
                            text,
                            style: theme.textTheme.displaySmall,
                          ),
                        );
                      case 2:
                        return const Padding(
                          padding:
                          EdgeInsets.only(top: 8.0, bottom: 10.0),
                          child: MeteoSection(),
                        );
                      case 3:
                        return const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 6),
                          child: GiftSection(),
                        );
                      case 4:
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: MealSection(),
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

