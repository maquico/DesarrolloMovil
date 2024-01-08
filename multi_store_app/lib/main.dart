import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_app/views/buyers/main_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
      options:FirebaseOptions(
          apiKey: 'AIzaSyCcjFN-AhFeDWcgqRKFmmZllrH5xGtIujo',
          appId: "1:876872684399:android:b82eb29c6de3dc0bf28e9a",
          messagingSenderId: "876872684399",
          projectId: 'multi-store-app-af194',
          storageBucket: 'multi-store-app-af194.appspot.com'
      )
  ) : Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          fontFamily: 'Brand-Bold'
      ),
      home: MainScreen(),
    );
  }
}
