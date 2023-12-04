import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CardWidget.dart';

void main() => runApp(MyCard());

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('MY CARD'),
      ),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50.0,
            backgroundImage: AssetImage("images/homero.jpg"), //Casi todos los widgets reciben un child, algunos mas de 1
          ),

          Text( 'Jorge Perez',
            style: GoogleFonts.pacifico(
              color: Colors.white,
            )
          ),

         Text('Mobile Programmer'),

        SizedBox(
          width: 200,
          height: 30.0,
          child: Divider(
            height: 100,
            color: Colors.red,
            thickness: 20,
          ),
        ),

          CardWidget(
              icono: Icons.email,
              texto: "angelgmorenor@gmail.com"
          ),

          CardWidget(
            icono: Icons.phone,
            texto: "829-764-0186"
          ),



        ],
      ),
    );
  }
  }



