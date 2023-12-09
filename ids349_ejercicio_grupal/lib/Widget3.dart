import 'package:flutter/material.dart';

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: Colors.lightBlueAccent,
          height: 180.0,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blueGrey,
                      height: 60.0,
                      width: 120.0,
                      margin: const EdgeInsets.all(20.0),
                      child: Text('Bluelabel'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
