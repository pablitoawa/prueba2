import 'package:flutter/material.dart';
import 'package:prueba2/screens/cuentaScreen.dart';
import 'package:prueba2/screens/historialScreen.dart';

void main() {
  runApp(const Conjunto());
}

class Conjunto extends StatefulWidget {
  const Conjunto({super.key});

  @override
  State<Conjunto> createState() => _ConjuntoState();
}

class _ConjuntoState extends State<Conjunto> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens = [
      const Cuenta(),
      const Historial(),
    ];


    return Scaffold(

      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            activeIcon: Icon(Icons.account_box),
            label: "Perfil",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history_rounded),
            label: "Perfil",
            backgroundColor: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
