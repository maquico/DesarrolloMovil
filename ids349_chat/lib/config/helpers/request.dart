import 'package:dio/dio.dart';
import '../../entities/message.dart';
import '../../models/request_model.dart';

class Request{

  final dio = Dio();

  Future<Message> getAnswer() async{
    final response = await dio.get('https://yesno.wtf/api');
    final message = RequestModel.fromJson(response.data);
    return message.convertToMessage();
  }
}