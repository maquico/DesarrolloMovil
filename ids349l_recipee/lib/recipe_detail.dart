import 'package:flutter/material.dart';
import 'package:ids349l_recipee/recipe.dart';


class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});
  final Recipes recipe;
  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  //Barra baja para clases y atributos privados
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
                widget.recipe.imageURL,
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.recipe.label),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (context, index){
                      final ingredients = widget.recipe.ingredients[index];
                      return Text("${ingredients.quantity * _sliderValue} ${ingredients.measure} ${ingredients.label}");
                    },
                ),
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              label: "$_sliderValue Servings",
              value: _sliderValue.toDouble(),
              divisions: 9,
              onChanged: (newValue){
                print(newValue);
                //Con setState marcamos que este es el momento en que el stfull widget debe redibujar la pantalla
                setState(() {
                  _sliderValue = newValue.toInt();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
