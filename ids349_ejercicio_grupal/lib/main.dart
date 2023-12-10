import 'package:flutter/material.dart';
import 'diary_app_theme.dart';
import 'screens/entry_detail/entry_detail_screen.dart';


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
        home: EntryDetail(title: title, text: text));
  }
}

