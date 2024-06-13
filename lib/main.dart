import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prueba2/screens/loginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ingreso(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ingreso extends StatefulWidget {
  const Ingreso({super.key});

  @override
  State<Ingreso> createState() => _IngresoState();
}

class _IngresoState extends State<Ingreso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: cuerpo(context),
    );
  }
}



Widget cuerpo(context) {
  return Container(
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (Column(
      children: <Widget>[nombre(), usuario(), boton(context)],
    )),
  );
}

Widget nombre() {
  return const Text("Pablo Bejarano");
}

Widget usuario() {
  return const Text("pablitoawa");
}

Widget boton(context) {
  return FilledButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>const Login()));
      },
      child: const Text("Ingresar"));
}
