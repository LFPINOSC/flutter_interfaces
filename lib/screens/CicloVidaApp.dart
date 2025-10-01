import 'package:flutter/material.dart';
class CicloVidaApp extends StatefulWidget {
  @override
  State<CicloVidaApp> createState() => _CicloVidaAppState();
}

class _CicloVidaAppState extends State<CicloVidaApp> with WidgetsBindingObserver {
  String _estado="Aplicacion iniciada";
  Color _colorFondo=Colors.white;
  IconData _icono= Icons.phone_android;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      switch (state) {
        case AppLifecycleState.inactive:
          _estado="Aplicacion inactiva";
          _colorFondo=Colors.yellow;
          _icono= Icons.pause_circle;
          break;
        case AppLifecycleState.paused:
          _estado="Aplicacion en segundo plano";
          _colorFondo=Colors.red;
          _icono= Icons.stop_circle;
          break;
        case AppLifecycleState.resumed:
          _estado="Aplicacion en primer plano";
          _colorFondo=Colors.green;
          _icono= Icons.play_circle;
          break;
        case AppLifecycleState.detached:
          _estado="Aplicacion cerrada";
          _colorFondo=Colors.grey;
          _icono= Icons.cancel;
          break;
      }
    });
    if(mounted){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_estado),
          duration: Duration(seconds: 1),
        )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Ciclo de vida de la aplicacion")
      ),
      body: AnimatedContainer(
        duration: Duration(microseconds: 30),
        color: _colorFondo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "Estado actual",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                _estado,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
     
    );
  }
}