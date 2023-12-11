import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ids349l_delivery_app/pages/login/login_page.dart';
import 'package:ids349l_delivery_app/pages/register/register_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
            accentColor: Colors.redAccent
          ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
      ],//Si usamos este attrb no se puede tener home
    );
  }
}
