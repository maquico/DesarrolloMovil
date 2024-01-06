import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../config/helpers/request.dart';
import '../../entities/message.dart';

class ChatProvider extends ChangeNotifier{

  //Crear controlador para el listview
  final scrollController = ScrollController();

  //Instanciar Request
  final request = Request();

  List<Message> messageList = [
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty)
      return;
    final message = Message(text: text, fromWho: FromWho.me);
    messageList.add(message);
    if (text.endsWith('?')){
      getYourAnswer();
    }

    notifyListeners();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollToBottom();
    });
  }

  //Metodo para decirle al scroll que se vaya al final de la pantalla
  void moveScrollToBottom(){
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> getYourAnswer() async{
    final yourAnswer = await request.getAnswer();
    messageList.add(yourAnswer);
    notifyListeners();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollToBottom();
    });
  }
}

