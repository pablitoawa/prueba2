import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:prueba2/screens/loginScreen.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: cuerpo(context),
      ),
    );
  }
}

Widget cuerpo(context) {
  return Container(
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (Column(
      children: [correo(), nickname(), contrasena(), botonRegistrar(context)],
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

final TextEditingController _nicknameController = TextEditingController();
Widget nickname() {
  return TextField(
    controller: _nicknameController,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Nickname',
      hintText: "Ingrese su nickname",
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

Widget botonRegistrar(context) {
  return FilledButton(
      onPressed: () {
        register(context);
        guardar();
      },
      child: const Text("Registrarme"));
}

Future<void> register(BuildContext context) async {
  try {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));

    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);
    print(credential);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
  ;
}

Future<void> guardar() async {
  DatabaseReference ref =
      FirebaseDatabase.instance.ref("users/ " + _nicknameController.text);

  await ref.set({"correo": _emailController.text});
}
