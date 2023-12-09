import 'package:flutter/material.dart';
import 'package:ids349_ejercicio_grupal/Widget3.dart';
import 'diary_app_theme.dart';

void main() => runApp(DiaryApp());

class DiaryApp extends StatelessWidget {
  final String description = "It's going to be a great birthday. We are " +
      "going out for dinner at my favorite place, then watch a movie after we go to the" +
      " gelateria for ice cream and espresso.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diary App',
      theme: DiaryAppTheme.lightTheme(),
      home: EntryDetail(title: "My Birthday", desc: description)
    );
  }
}

class EntryDetail extends StatelessWidget {
  final String title;
  final String desc;

  const EntryDetail({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: DiaryAppTheme.lightTextTheme.displayLarge,
                    ),
                    Text(
                      desc,
                      style: DiaryAppTheme.lightTextTheme.displaySmall,
                    ),
                    Widget3(),
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
