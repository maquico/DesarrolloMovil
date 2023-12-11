import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  //Capturar texto
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  //Metodo para movernos a la pagina de registro
  void gotoRegisterPage(){
    Get.toNamed('register');
  }

  //Metodo para manejar la validacion del formulario
  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(validForm(email, password)){
      print("Formulario listo para hacer la peticion HTTP");
    }
  }

  bool validForm(String email, String password){
    if(!GetUtils.isEmail(email)){
      Get.snackbar("Formulario Invalido", "Debes ingresar un email válido");
      return false;
    }

    if(email.isEmpty){
      Get.snackbar("Formulario Invalido", "Debes ingresar un email");
      return false;
    }

    if(password.isEmpty){
      Get.snackbar("Formulario Invalido", "Debes ingresar un password");
      return false;
    }
    return true;
  }
} //fin de la clase
