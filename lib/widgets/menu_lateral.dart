import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menulateral extends StatelessWidget {
  Menulateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green.shade800,
        child: ListView(
         padding: EdgeInsets.only(top: 40),
         children: [
            ListTile(
              title: Text('Inicio', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Nosotros', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/nosotros');
              },
            ),
            ListTile(
              title: Text('Postula tu proyecto', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Empresas', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Proyectos', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('¿Cómo ayudar?', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Noticias', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Biblioteca', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Contacto', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
                FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}