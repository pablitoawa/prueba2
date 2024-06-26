import 'package:flutter/material.dart';

void main() {
  runApp(const Historial());
}

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Historial"),
        ),
        body: cuerpo(),
      ),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://img.freepik.com/vector-gratis/fondo-lindo-cafe-vector-papel-tapiz-rosa_53876-136842.jpg?size=626&ext=jpg&ga=GA1.1.672697106.1718236800&semt=ais_user'),
        fit: BoxFit.cover,
      ),
    ),
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (Column(
      children: [SafeArea(child: retiro1()), SafeArea(child: retiro2()), SafeArea(child: retiro3())],
    )),
  );
}

Widget retiro1() {
  return Row(
    children: const [
      Text("Retiro: 760   "),
      Text("Tipo: impuestos   "),
      Text("Saldo: 350"),
    ],
  );
}
Widget retiro2() {
  return Row(
    children: const [
      Text("Retiro: 303   "),
      Text("Tipo: impuestos   "),
      Text("Saldo: 450"),
    ],
  );
}

Widget retiro3() {
  return Row(
    children: const [
      Text("Retiro: 459   "),
      Text("Tipo: impuestos   "),
      Text("Saldo: 250"),
    ],
  );
}