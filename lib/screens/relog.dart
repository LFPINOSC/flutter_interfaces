import 'package:flutter/material.dart';
class RelojScreens extends StatefulWidget {
  const RelojScreens({super.key});

  @override
  State<RelojScreens> createState() => _RelojScreensState();
}

class _RelojScreensState extends State<RelojScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reloj"),
      ),
      body: const Center(
        child: Text("Pantalla de reloj"),
      ),
    );
  }
}