import 'package:flutter/material.dart';

class CategoryTextWidget extends StatelessWidget {
  const CategoryTextWidget({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> _categoryName = ['eggs', 'rice','vegetables', 'drinks'];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('CATEGORY',
          style: TextStyle(
            fontSize: 19
          ),
          ),
        ),
        Container(
          height: 40,
          child: Row(
            children: [
              Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryName.length,
                  itemBuilder: (context, index){
                   return ActionChip(
                     backgroundColor: Colors.yellow,
                    label: Center(child: Text(_categoryName[index])),
                    onPressed: (){
                    },
                   );
              },)
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        )
      ],
    );
  }
}
