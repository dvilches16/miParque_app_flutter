import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class NosotrosScreen extends StatefulWidget {
  const NosotrosScreen({super.key});

  @override
  State<NosotrosScreen> createState() => EstadoNosotrosScreen();
}

class EstadoNosotrosScreen extends State<NosotrosScreen> {
  final GlobalKey<ScaffoldState> claveScaffold = GlobalKey<ScaffoldState>();

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/nosotros/nosotros.jpg',
                          fit: BoxFit.cover,
                          height: 350,
                          width: double.infinity,
                        ),
                        Container(
                          height: 350,
                          width: double.infinity,
                          color: Colors.green.withOpacity(0.5),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerLeft,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fundación Mi Parque',
                                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'Nosotros',
                                style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Mejoramos la calidad de vida\n en barrios vulnerables a\n través de un proceso participativo de diseño,\nconstrucción y activación de\n áreas verdes para el\n encuentro.',
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          _botonSeccion(
                            texto: '¿Qué hacemos?',
                            ruta: '/queHacemos',
                            contexto: context,
                          ),
                          const SizedBox(height: 20),
                          _botonSeccion(
                            texto: 'Historia',
                            ruta: '/historia',
                            contexto: context,
                          ),
                          const SizedBox(height: 20),
                          _botonSeccion(
                            texto: 'Equipo',
                            ruta: '/equipo',
                            contexto: context,
                          ),
                          const SizedBox(height: 20),
                          _botonSeccion(
                            texto: 'Nos Apoyan',
                            ruta: '/apoyan',
                            contexto: context,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonSeccion({required String texto, required String ruta, required BuildContext contexto}) {
    return OutlinedButton(
      onPressed: () => Navigator.pushNamed(contexto, ruta),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade400),
        backgroundColor: Colors.white,
        minimumSize: const Size(320, 50),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Text(texto, style: const TextStyle(color: Colors.grey)),
    );
  }
}