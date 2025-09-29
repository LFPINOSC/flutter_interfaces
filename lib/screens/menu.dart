import 'package:flutter/material.dart';
import 'package:flutter_interfaces/screens/calculadora.dart';
import 'package:flutter_interfaces/screens/relog.dart';
import 'package:flutter_interfaces/screens/timer.dart';
import 'package:flutter_interfaces/widget/menuItem.dart';

class MunuPantalla extends StatelessWidget {
  const MunuPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu principal"),
      ),
      body: GridView.count(
        padding:  EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          MenuItem(titulo: "CALCULADORA", icono: Icons.calculate, onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (_) => const CalculadorScreen()));
          } ),
           MenuItem(titulo: "TIMER", icono: Icons.access_time, onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (_) => const RelojScreens()));
          } ),
           MenuItem(titulo: "RELOG", icono: Icons.timer, onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (_) => const TimerScreen()));
          } ),
          
          
        ],
      ),

    );
  }
}