import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class QueHacemosScreen extends StatefulWidget {
  QueHacemosScreen({super.key});

  @override
  State<QueHacemosScreen> createState() => EstadoQueHacemosScreen();
}

class EstadoQueHacemosScreen extends State<QueHacemosScreen> {
  final GlobalKey<ScaffoldState> claveScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: claveScaffold,
      backgroundColor: Colors.white,
      endDrawer: Menulateral(),
      body: SafeArea(
        child: Column(
          children: [
            Encabezado(
              abrirMenu: () => claveScaffold.currentState?.openEndDrawer(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/queHacemos/queHacemos.jpg',
                          fit: BoxFit.cover,
                          height: 350,
                          width: double.infinity,
                        ),
                        Container(
                          height: 350,
                          width: double.infinity,
                          color: Colors.green.withOpacity(0.5),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '¿Qué hacemos?',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Buscamos mejorar la'
                                'calidad de vida de quienes'
                                'más lo necesitan,a través'
                                'de un proceso participativo\n'
                                'de diseño, construcción y\n'
                                'activación\n'
                                'de áreas verdes',

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    _bloqueMision(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bloqueMision() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text(
              'Nuestra misión',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Nuestra Misión es Mejorar la calidad de vida\n' 
              'en barrios vulnerables a través de un\n'
              'proceso participativo de diseño\n'
              'construcción y activación de áreas verdes\n'
              'para el encuentro.Soñamos con un país\n'
              'donde todas las personas se sientan\n' 
              'orgullosasde sus barrios. Esa es nuestra\n' 
              'visión.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(height: 20),
          ClipRRect(
            child: Image.asset(
              'assets/queHacemos/voluntariado.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}