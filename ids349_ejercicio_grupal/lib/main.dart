import 'package:flutter/material.dart';
import 'diary_app_theme.dart';

void main() => runApp(DiaryApp());

class DiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diary App',
      theme: DiaryAppTheme.lightTheme(),
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/regalos.jpg"),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Column(
                    children: [
                      Text(
                        "Titulo",
                        style: DiaryAppTheme.lightTextTheme.displayLarge,
                      ),
                      Text(
                        "Descripcion",
                        style: DiaryAppTheme.lightTextTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
