import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/carrito_bot_nav_page.dart';
import 'package:jefe_restaurante/pages/config_bot_nav_page.dart';
import 'package:jefe_restaurante/pages/inicio_bot_nav_page.dart';

class BottonNav extends StatefulWidget {
  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int index = 0;
  List<Widget> myList = [
    InicioNav(),
    ConfNav(),
    CarritoNav(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
      ),



      body:
      myList[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        selectedItemColor: Colors.deepOrangeAccent,
        elevation: 5,

        iconSize: 23,
        selectedFontSize: 15,
        unselectedFontSize: 8,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Configuracion'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Carrito'),
        ],

      ),
    );
  }
}
