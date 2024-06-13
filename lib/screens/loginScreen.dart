import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prueba2/screens/conjuntoScreen.dart';
import 'package:prueba2/screens/cuentaScreen.dart';
import 'package:prueba2/screens/registrerScreen.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: cuerpo(context),
      ),
    );
  }
}

Widget cuerpo(context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://i.pinimg.com/736x/04/42/c6/0442c6034a65913b61c73f715be6c8a1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (Column(
      children: [
        correo(),
        contrasena(),
        botonLogin(context),
        botonRegistro(context)
      ],
    )),
  );
}

final TextEditingController _emailController = TextEditingController();
Widget correo() {
  return TextField(
    controller: _emailController,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Email',
      hintText: "Ingrese su correo",
    ),
  );
}

final TextEditingController _passwordController = TextEditingController();
Widget contrasena() {
  return TextField(
    controller: _passwordController,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Contraseña',
      hintText: "Ingrese su contraseña",
    ),
  );
}

Widget botonLogin(context) {
  return FilledButton(
      onPressed: () {
        login(context);
      },
      child: const Text("Ingresar"));
}

Future<void> login(BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Conjunto()));
  } on FirebaseAuthException catch (e) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(e.message ?? 'Ha ocurrido un error'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}

Widget botonRegistro(context) {
  return FilledButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Register()));
      },
      child: const Text("Registrarse"));
}
