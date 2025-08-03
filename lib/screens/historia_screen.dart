import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class HistoriaScreen extends StatefulWidget {
  HistoriaScreen({super.key});

  @override
  State<HistoriaScreen> createState() => _HistoriaScreenState();
}

class _HistoriaScreenState extends State<HistoriaScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: Menulateral(),
      body: SafeArea(
        child: Column(
          children: [
            Encabezado(abrirMenu: () => _scaffoldKey.currentState?.openEndDrawer()),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/historia/historia.jpg',
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
                              Text('Historia', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(
                                'El año 2007, un grupo de\narquitectos, preocupados por\ndarles una mayor dignidad a las\npersonas, plasmaron sus\npreocupaciones y experiencias\nen un proyecto que buscaba\nmejorar el entorno diario de la\ncomunidad',
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Percatándose de que en materia de generación\n'
                        'de ciudad y barrios, tanto el estado como varias\n'
                        'organizaciones de la sociedad civil habían\n'
                        'puesto su atención sobre todo en el tema de la\n'
                        'vivienda, es que se propone trabajar en el espacio público. Así nace\n'
                        'Fundación Mi Parque, cuyo objetivo es mejorar\n'
                        'las áreas verdes del “Chile urbano”.\n\n'
                        'Luego de adquirir en 2008 la personalidad jurídica, se\n'
                         'comenzó a abrir un amplio horizonte de oportunidades\n'
                        'de trabajo a lo largo de Chile. Junto con los proyectos\n'
                        'comenzó a aumentar el equipo, el cual a medida que \n'
                        'aumentaba la complejidad de las intervenciones se\n'
                        'convertía en un grupo más interdisciplinario. Del mismo\n'
                        ' modo, cada vez más amigos, socios y voluntarios se\n'
                        'fueron sumando a nuestra misión, así como muchas\n'
                        'empresas privadas se comprometieron y han permitido\n'
                        'hacer realidad el que miles de chilenos puedan contar\n'
                        'con una nueva plaza o parque en sus barrios.',
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}