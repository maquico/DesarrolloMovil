import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ids349l_delivery_app/pages/login/login_controller.dart';
import 'package:lottie/lottie.dart';

    class LoginPage extends StatefulWidget {
      const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
      //Crear objeto de tipo login controller
  LoginController controller = Get.put(LoginController());
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Stack(
            children: [
              _boxCover(context),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     //_imageCover(),
                     _imageAnimation(),
                     _textAppName(),
                     _boxForm(context),
                ]
                ),
              )
            ],
          ),
              bottomNavigationBar: SizedBox(
                height: 50,
                child: _textDontHaveAccount(),
              ),
        );
      }

      //metodo para cargar la imagen
    Widget _imageCover(){
        return  SafeArea(
          child: Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Image.asset('assets/images/intec_logo.png', height: 140)
          ),
        );
    }

    Widget _imageAnimation(){
        return SafeArea(
          child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Lottie.asset(
                'assets/json/delivery_animation.json',
                width: 140.0
              ),
          ),
        );
    }

    Widget _textAppName(){
        return Text("Delivery App",
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
          height: MediaQuery.of(context).size.height * 0.45,
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
                height: 30,
              ),
              _textLogin(),
              _textPassword(),
              _buttonLogin(),
            ],
          ),
        );
    }

    //Campo entrada de correo
    Widget _textLogin(){
        return TextField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Correo electronico",
            prefixIcon: Icon(Icons.email),
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

      //Campo entrada de informacion
      Widget _textYourInfo(){
        return Text(
          'INGRESA TUS DATOS',
          textAlign: TextAlign.center,
        );
      }

      Widget _buttonLogin(){
        return Container(
          margin: EdgeInsets.only(top: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15)
            ),
              onPressed: controller.login,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text('LOGIN'),
              )
          ),
        );
      }

      Widget _textDontHaveAccount(){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¿No tienes cuenta?'),
            SizedBox(width: 10),
            GestureDetector(
              child: Text('Registrate!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),),
              onTap: (){
                return controller.gotoRegisterPage();
              },
            )
          ],
        );
      }
}
