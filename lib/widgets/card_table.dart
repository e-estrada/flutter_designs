import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            text: 'Genral',
            icon: Icons.border_all,
            color: Colors.blue,
          ),
          _SingleCard(
            text: 'Transport',
            icon: Icons.car_rental_outlined,
            color: Colors.purple,
          ),
        ]),

        TableRow(children: [
          _SingleCard(
            text: 'Shoping',
            icon: Icons.shopping_bag,
            color: Colors.pinkAccent,
          ),
          _SingleCard(
            text: 'Bills',
            icon: Icons.document_scanner_outlined,
            color: Colors.orange,
          ),
        ]),

        TableRow(children: [
          _SingleCard(
            text: 'Entertainment',
            icon: Icons.movie_creation_outlined,
            color: Colors.indigo,
          ),
          _SingleCard(
            text: 'Grocery',
            icon: Icons.local_grocery_store,
            color: Colors.green,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  
  const _SingleCard({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(color: const Color.fromRGBO(62, 66, 107, 0.7), borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
