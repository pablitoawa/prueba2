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
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://i.pinimg.com/474x/14/c3/1d/14c31df3d4ea2be687e91d2427302448.jpg'),
        fit: BoxFit.cover,
      ),
    ),
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
  return const Text("Saldo de la cuenta: 400");
}
