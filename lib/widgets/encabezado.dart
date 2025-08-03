import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  final VoidCallback abrirMenu;

  const Encabezado({super.key, required this.abrirMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: const Offset(0, 4),
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
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 16),
              const Icon(Icons.shopping_cart_outlined, color: Colors.grey),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.grey),
                onPressed: abrirMenu,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
