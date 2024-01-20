import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multi_store_web_server/views/main_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid ? FirebaseOptions(
        apiKey: "AIzaSyDj5uXjETuuv9EpIZn2VPcX2j2J4ptiZBs",
        projectId: "multi-store-app-af194",
        storageBucket: "multi-store-app-af194.appspot.com",
        messagingSenderId: "876872684399",
        appId: "1:876872684399:web:58a64471ba059fa5f28e9a"
    ) : null
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MainScreen()
    );
  }
}
