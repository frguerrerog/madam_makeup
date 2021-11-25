import 'package:flutter/material.dart';
import 'package:madam_makeup/ui/pages/authentication/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static String id = "sign_up_screen";

  @override
  _SingState createState() => _SingState();
}

class _SingState extends State<SignUpScreen> {
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
        _nombreTextField(),
        _correoTextField(),
        _contrasenaTextField(),
        _registrarseButton(),
        _iniciarSesionTextButton(context),
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
      "Registrase",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget _nombreTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
    child: const TextField(
      key: Key("signInEmail"),
      decoration: InputDecoration(
        labelText: 'Nombre',
        icon: Icon(Icons.perm_identity),
        hintText: 'Madam Makeup',
        fillColor: Colors.white,
        filled: true,
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

Widget _registrarseButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
          child: ElevatedButton(
            child: const Text("Registrarse"),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}

Widget _iniciarSesionTextButton(context) {
  return TextButton(
    key: const Key("toSignUpButton"),
    child: const Text("Iniciar sesión"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    },
  );
}
