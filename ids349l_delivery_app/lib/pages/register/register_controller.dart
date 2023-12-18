import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  //Capturar texto
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namesController = TextEditingController();
  TextEditingController lastNamesController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController verifyPasswordController = TextEditingController();


  //Metodo para movernos a la pagina de registro
  void gotoRegisterPage(){
    Get.toNamed('register');
  }

  void gotoLoginPage(){
    Get.back();
  }

  //Metodo para manejar la validacion del formulario
  void register(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String names = namesController.text.trim();
    String lastNames = lastNamesController.text.trim();
    String phone = phoneController.text.trim();
    String verifyPassword = verifyPasswordController.text.trim();
    if(validForm(email, password, names, lastNames, phone, verifyPassword)){
      print("Formulario de registro listo para hacer la peticion HTTP");
    }
  }

  bool validForm(String email, String password, String names, String lastNames, String phone, String verifyPassword){

    if (email.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes ingresar tu correo electrónico");
      return false;
    } else if (names.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes ingresar tu nombre");
      return false;
    } else if (lastNames.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes ingresar tus apellidos");
      return false;
    } else if (phone.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes ingresar tu número de teléfono");
      return false;
    } else if (password.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes ingresar tu contraseña");
      return false;
    } else if (verifyPassword.isEmpty) {
      Get.snackbar("Formulario Invalido", "Debes verificar tu contraseña");
      return false;
    }

    if(!GetUtils.isEmail(email)){
      Get.snackbar("Formulario Invalido", "Debes ingresar un email válido");
      return false;
    }

    if(!GetUtils.isPhoneNumber(phone)){
      Get.snackbar("Formulario Invalido", "Debes ingresar un telefono válido");
      return false;
    }

    if(password != verifyPassword){
      Get.snackbar("Formulario Invalido", "Debes ingresar dos veces la misma contraseña");
      return false;
    }
    return true;
  }
} //fin de la clase
