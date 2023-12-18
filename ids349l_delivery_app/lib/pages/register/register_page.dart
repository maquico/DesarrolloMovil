
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ids349l_delivery_app/pages/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Crear objeto de tipo register controller
  RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxCover(context),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: ElevatedButton(
                              child: Icon(Icons.arrow_back),
                              onPressed: controller.gotoLoginPage,
                            ),
                         ),
                      ],
                    ),
                    _textAppName(),
                    _boxForm(context),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _textAppName(){
    return Text("Regístrate",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    );
  }

  //Metodo con un cover de background
  Widget _boxCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.redAccent.withOpacity(0.40),
    );
  }

  //Formulario de login
  Widget _boxForm(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03, left: 50, right: 50),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                offset: Offset(0, 0.75)
            )
          ]
      ),
      child: Column(
        children: [
          _textYourInfo(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 60.0,
              ),
              onTap: (){
                print("Tap en circle avatar registro");
              },
            ),
          ),
          _textNombres(),
          _textApellidos(),
          _textEmail(),
          _textTelefono(),
          _textPassword(),
          _textVerifyPassword(),
          _buttonRegister(),
        ],
      ),
    );
  }

  //Campo entrada de nombres
  Widget _textNombres(){
    return TextField(
      controller: controller.namesController,
      decoration: InputDecoration(
        hintText: "Nombres",
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  //Campo entrada de apellidos
  Widget _textApellidos(){
    return TextField(
      controller: controller.lastNamesController,
      decoration: InputDecoration(
        hintText: "Apellidos",
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  //Campo entrada de correo
  Widget _textEmail(){
    return TextField(
      controller: controller.emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Correo electronico",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  //Campo entrada de telefono
  Widget _textTelefono(){
    return TextField(
      controller: controller.phoneController,
      decoration: InputDecoration(
        hintText: "Teléfono",
        prefixIcon: Icon(Icons.phone),
      ),
    );
  }

  //Campo entrada de contraseña
  Widget _textPassword(){
    return TextField(
      controller: controller.passwordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: "Contraseña",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  //Campo verificacion de contraseña
  Widget _textVerifyPassword(){
    return TextField(
      controller: controller.verifyPasswordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: "Verificar contraseña",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  //Campo entrada de informacion
  Widget _textYourInfo(){
    return Text(
      'INGRESA TUS DATOS',
      textAlign: TextAlign.center,
    );
  }

  Widget _buttonRegister(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15)
          ),
          onPressed: controller.register,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text('Register'),
          )
      ),
    );
  }


}
