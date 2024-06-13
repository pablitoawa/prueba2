import 'package:flutter/material.dart';

void main() {
  runApp(const Cuenta());
}

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cuenta"),
        ),
        body: cuerpo(),
      ),
    );
  }
}

Widget cuerpo() {
  return Container(
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (Column(
      children: [imagen(), cuenta(), total()],
    )),
  );
}

Widget imagen() {
  return Image.network('https://i0.wp.com/dibujokawaii.com/wp-content/uploads/2023/07/dibujar-un-gato-facil.png?fit=1000%2C563&ssl=1');
}

Widget cuenta() {
  return const Text("N° de cuenta: 12345678");
}

Widget total() {
  return const Text("Total de la cuenta: 400");
}
