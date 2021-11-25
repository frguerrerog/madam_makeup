import 'package:flutter/material.dart';
import 'package:madam_makeup/ui/pages/authentication/signup/sign_up_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cuerpoCenter(context),
    );
  }
}

Widget _cuerpoCenter(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _nombreText(),
        _inicioSesionText(),
        _correoTextField(),
        _contrasenaTextField(),
        _inicioSesionButton(),
        _registrarseTextButton(context),
      ],
    ),
  );
}

Widget _nombreText() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: const Text(
      "Madam Makeup",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget _inicioSesionText() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: const Text(
      "Iniciar sesión",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget _correoTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
    child: const TextField(
      key: Key("signInEmail"),
      decoration: InputDecoration(
        labelText: 'Correo electronico',
        icon: Icon(Icons.mail_outline_sharp),
        hintText: 'ejemplo@correo.com',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget _contrasenaTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
    child: const TextField(
      key: Key("signInPassword"),
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        labelText: 'Contraseña',
        icon: Icon(Icons.password),
        hintText: 'Contraseña',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget _inicioSesionButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
          child: ElevatedButton(
            child: const Text("Iniciar sesion"),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}

Widget _registrarseTextButton(context) {
  return TextButton(
    key: const Key("toSignUpButton"),
    child: const Text("Registrarse"),
    onPressed: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    },
  );
}
