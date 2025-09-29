import 'package:flutter/material.dart';
class CalculadorScreen extends StatefulWidget {
  const CalculadorScreen({super.key});

  @override
  State<CalculadorScreen> createState() => _CalculadorScreenState();
}

class _CalculadorScreenState extends State<CalculadorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: const Center(
        child: Text("Pantalla de calculadora"),
      ),
    );
  }
}