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
    '/home': (BuildContext context) => HomeScreen(),
    '/nosotros': (BuildContext context) => NosotrosScreen(),
    '/queHacemos': (BuildContext context) => QueHacemosScreen(),
    '/historia': (BuildContext context) => HistoriaScreen(),
    '/equipo': (BuildContext context) => EquipoScreen(),
    '/apoyan': (BuildContext context) => ApoyanScreen(),
    '/error': (BuildContext context) => ErrorScreen(),
  };

  static Route<dynamic> generarRuta(RouteSettings configuracion) {
    return MaterialPageRoute(builder: (context) => ErrorScreen());
  }
}
