import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class EquipoScreen extends StatefulWidget {
  const EquipoScreen({super.key});

  @override
  State<EquipoScreen> createState() => EstadoEquipoScreen();
}

class EstadoEquipoScreen extends State<EquipoScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> claveScaffold = GlobalKey<ScaffoldState>();
  late TabController controladorPestanas;

  @override
  void initState() {
    super.initState();
    controladorPestanas = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controladorPestanas.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: claveScaffold,
      backgroundColor: Colors.white,
      endDrawer: const Menulateral(),
      body: SafeArea(
        child: Column(
          children: [
            Encabezado(
              abrirMenu: () => claveScaffold.currentState?.openEndDrawer(),
            ),
            Expanded(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/equipo/equipo.jpg',
                        height: 350,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 350,
                        width: double.infinity,
                        color: Colors.green.withOpacity(0.5),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Fundación Mi Parque',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Equipo',
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Conoce a quienes fundaron esta organización,\n su directorio y el equipo que trabaja diariamente\n por mejorar la calidad de vida de quienes más lo necesitan.',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TabBar(
                    controller: controladorPestanas,
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    tabs: const [
                      Tab(text: 'Equipo'),
                      Tab(text: 'Fundadores'),
                      Tab(text: 'Directorio'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: controladorPestanas,
                      children: [
                        _contenidoEquipo(),
                        const Center(child: Text('Contenido de los fundadores')),
                        const Center(child: Text('Contenido del directorio')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contenidoEquipo() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 30),
      children: [
        _perfilMiembro(
          imagen: 'directorEjecutivo.jpg',
          cargo: 'DIRECTOR EJECUTIVO',
          nombre: 'Juan Ignacio Díaz',
        ),
        _perfilMiembro(
          imagen: 'directorProyecto.jpg',
          cargo: 'DIRECTOR DE PROYECTOS',
          nombre: 'Matías Honour',
        ),
        _perfilMiembro(
          imagen: 'alena.jpg',
          cargo: 'DIRECTORA DE ESTUDIOS Y DESARROLLO',
          nombre: 'Alena Collado',
        ),
      ],
    );
  }

  Widget _perfilMiembro({required String imagen, required String cargo, required String nombre}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/equipo/$imagen', fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 12),
          Text(cargo, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(nombre, style: const TextStyle(fontSize: 16, color: Colors.green)),
        ],
      ),
    );
  }
}