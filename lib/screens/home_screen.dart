import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
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
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/home/apoyar.png', height: 80),
                    SizedBox(height: 20),
                    Text('Financia un proyecto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                    SizedBox(height: 5),
                    Text('Participa como empresa en todo el proceso de recuperación\n de una nueva área verde.', textAlign: TextAlign.center),
                    SizedBox(height: 40),
                    Image.asset('assets/home/postular.png', height: 80),
                    SizedBox(height: 20),
                    Text('Postula tu proyecto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                    SizedBox(height: 5),
                    Text('Postula para mejorar un área verde junto a\n tu comunidad: una plaza de barrio o un\n patio educativo.', textAlign: TextAlign.center),
                    SizedBox(height: 40),
                    Image.asset('assets/home/areasVerdes.png', height: 80),
                    SizedBox(height: 20),
                    Text('Dona Áreas Verdes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                    SizedBox(height: 5),
                    Text('Escoge una tarjeta digital, haz una donación \nen nombre detu ser querido y personalízala.', textAlign: TextAlign.center),
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
