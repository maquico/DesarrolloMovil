import 'package:flutter/material.dart';
import 'package:ids349_chat/screens/chat/chat_screen.dart';
import 'package:ids349_chat/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      title: 'Material App',
      home: const ChatScreen()
    );
  }
}
