import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Error'),
      ),
      body: Center(
        child: Text(
          'Ha ocurrido un error.\nNo se encontró la ruta solicitada.',
          style: TextStyle(fontSize: 16, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}