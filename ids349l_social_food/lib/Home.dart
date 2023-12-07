import 'package:flutter/material.dart';
import 'package:ids349l_social_food/author_card.dart';
import 'card_1.dart';
import 'card_2.dart';
import 'card_3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Para controlar el tab actual
  int selectedIndex = 0;

  List<Widget> pages = [
    Card1(),
    Card2(),
    Card3(),
  ];

  //Metodo para cambiar el indice del tab
  void selectedIndexChanged(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Social Food',
          style: Theme.of(context).textTheme.headlineSmall,
        ),

      ),
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedIndexChanged,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 1',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 2',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 3',
          ),
        ],
      ),
    );
  }
}
