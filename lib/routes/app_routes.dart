import 'package:flutter/material.dart';

import 'package:mi_parque_app/screens/error_screen.dart';
import 'package:mi_parque_app/screens/home_screen.dart';
import 'package:mi_parque_app/screens/nosotros_screen.dart';
import 'package:mi_parque_app/screens/queHacemos_screen.dart';
import 'package:mi_parque_app/screens/historia_screen.dart';
import 'package:mi_parque_app/screens/equipo_screen.dart';
import 'package:mi_parque_app/screens/apoyan_screen.dart';

class AppRoutes {
  static const rutaInicial = '/home';

  static Map<String, Widget Function(BuildContext)> rutas = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/nosotros': (BuildContext context) => const NosotrosScreen(),
    '/queHacemos': (BuildContext context) => const QueHacemosScreen(),
    '/historia': (BuildContext context) => const HistoriaScreen(),
    '/equipo': (BuildContext context) => const EquipoScreen(),
    '/apoyan': (BuildContext context) => const ApoyanScreen(),
    '/error': (BuildContext context) => const ErrorScreen(),
  };

  static Route<dynamic> generarRuta(RouteSettings configuracion) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
