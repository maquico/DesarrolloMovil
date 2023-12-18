import 'package:flutter/material.dart';

import '../../entities/message.dart';

class ChatProvider extends ChangeNotifier{

  //Crear controlador para el listview
  final scrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty)
      return;
    final message = Message(text: text, fromWho: FromWho.me);
    messageList.add(message);
    notifyListeners();
    moveScrollToBottom();
  }

  //Metodo para decirle al scroll que se vaya al final de la pantalla
  void moveScrollToBottom(){
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

