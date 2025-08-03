import 'package:flutter/material.dart';

class Menulateral extends StatelessWidget {
  const Menulateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green.shade800,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           
            ListTile(
              title: const Text('Inicio', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(title: Text('Nosotros', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/nosotros');
              },
            ),
            ListTile(title: Text('Postula tu proyecto', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('Empresas', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('Proyectos', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('¿Cómo ayudar?', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('Noticias', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('Biblioteca', style: TextStyle(color: Colors.white))),
            ListTile(title: Text('Contacto', style: TextStyle(color: Colors.white))),
            SizedBox(height: 20),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.language, color: Colors.white),
                Icon(Icons.facebook, color: Colors.white),
                Icon(Icons.photo_camera, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}