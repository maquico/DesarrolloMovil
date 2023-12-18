import "package:flutter/material.dart";

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onvalue;

  final textController = TextEditingController();
  final focusNode = FocusNode();

  final outLineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent
    ),
    borderRadius: BorderRadius.circular(40.0),
  );
  MessageFieldBox({super.key, required this.onvalue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: "Digita tu mensaje terminado con un ?",
        enabledBorder: outLineInputBorder,
        filled: true,
        focusedBorder: outLineInputBorder,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('Send value = $textValue');
            textController.clear();
            focusNode.requestFocus();
            onvalue(textValue);
          },
        )
      ),
        onFieldSubmitted: (value) { //Maneja la accion al hacer enter
          print('Submitted $value');
          textController.clear();
          focusNode.requestFocus();
          onvalue(value);
        },
    );
  }
}
