import 'package:flutter/material.dart';
import 'package:ids349_ejercicio_grupal/meals_section.dart';
import 'diary_app_theme.dart';
import 'meteo_section.dart';

void main() => runApp(DiaryApp());

class DiaryApp extends StatelessWidget {

  final title = "My Birthday";
  final text =
      "It's going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria ofr ice cream and espresso";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diary App',
        theme: DiaryAppTheme.lightTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Text("Layouts"),
                Spacer(),
                Icon(Icons.cloud_outlined),
              ],
            ),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            title,
                            style: DiaryAppTheme.lightTextTheme.displayLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            text,
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: MeteoSection(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Placeholder(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MealsSection(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
