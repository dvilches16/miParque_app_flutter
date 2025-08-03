import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  final VoidCallback abrirMenu;

  Encabezado({super.key, required this.abrirMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/home/logo.png',
            height: 80,
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              Icon(Icons.search, color: Colors.grey),
              SizedBox(width: 16),
              Icon(Icons.shopping_cart_outlined, color: Colors.grey),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.grey),
                onPressed: abrirMenu,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
