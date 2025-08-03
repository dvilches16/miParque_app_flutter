import 'package:flutter/material.dart';
import 'package:mi_parque_app/routes/app_routes.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi_Parque',
      initialRoute: AppRoutes.rutaInicial,
      routes: AppRoutes.rutas,
      onGenerateRoute: AppRoutes.generarRuta,
    );
  }
}