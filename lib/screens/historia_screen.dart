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
                        'Percatándose de que en materia\n'
                        'de generación de ciudad y barrios, tanto el\n'
                        'estado como varias organizaciones de la\n'
                        'sociedad civil habían puesto su atención\n' 
                        'sobre todo en el tema de la vivienda es que\n'
                        'se propone trabajar en el espacio público.\n' 
                        'Así nace Fundación Mi Parque, iniciativa\n'
                        'cuyo objetivo es mejorar las áreas verdes del\n'
                         '“Chile urbano”.\n\n'
                        'Luego de adquirir en 2008 la personalidad\n' 
                        'jurídica, se comenzó a abrir un amplio\n'
                        'horizonte de oportunidades de trabajo a lo \n'
                        'largo de Chile. Junto con los proyectos\n'
                        'comenzó a aumentar el equipo, el cual a \n'
                        'medida que aumentaba la complejidad de\n'
                        'las intervenciones se convertía en un grupo\n' 
                        'más interdisciplinario. Del mismo modo,\n' 
                        'cada vez más amigos, socios y voluntarios\n'
                        'se fueron sumando a nuestra misión, así\n' 
                        'como muchas empresas privadas\n'
                        'se comprometieron y han permitido hacer\n'
                        'realidad el que miles de chilenos puedan \n'
                        'contar\n con una nueva plaza o parque en sus\n'
                         'barrios.',
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