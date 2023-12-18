import 'package:flutter/material.dart';
import 'package:ids349_chat/presentation/provider/chat_provider.dart';
import 'package:ids349_chat/screens/chat/chat_screen.dart';
import 'package:ids349_chat/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).theme(),
        title: 'Material App',
        home: const ChatScreen()
      ),
    );
  }
}
