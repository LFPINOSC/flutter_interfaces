import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String titulo; 
  final IconData icono;
  final VoidCallback onTap;

  const MenuItem({
    super.key, 
    required this.titulo,
    required this.icono,
    required this.onTap
    }
  );

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(10),
      child: Card(
        elevation: 3,
        shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(14)),
        child: (Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.icono,size: 48,color: Colors.deepOrange,),
              const SizedBox(height: 8,),
              Text(
                widget.titulo, 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )
            ],
          ),
        )),
      ),
    );
  }
}