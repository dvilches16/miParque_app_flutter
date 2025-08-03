import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';
import '../widgets/encabezado.dart';

class ApoyanScreen extends StatefulWidget {
  ApoyanScreen({super.key});

  @override
  State<ApoyanScreen> createState() => EstadoApoyanScreen();
}

class EstadoApoyanScreen extends State<ApoyanScreen> {
  final GlobalKey<ScaffoldState> claveScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: claveScaffold,
      endDrawer: Menulateral(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Encabezado(
              abrirMenu: () {
                claveScaffold.currentState?.openEndDrawer();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/nosApoyan/nosApoyan.jpg',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: double.infinity,
                          height: 300,
                          color: Colors.green.withOpacity(0.5),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fundación Mi Parque',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Nos apoyan',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Gracias a las relaciones de\ncolaboración, hay organizaciones\nque nos apoyan de forma\nconstante. Si quieres ser parte,\nescríbenos a:\nvstefano@miparque.cl',
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
                    SizedBox(height: 40),
                    Column(
                      children: [
                        Text(
                          'Han trabajado con nosotros',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                          'assets/nosApoyan/transbank.png',
                          height: 100,
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                    SizedBox(height: 50),
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