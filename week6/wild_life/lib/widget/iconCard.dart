import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgcolor;
  const IconCard({required this.icon, required this.text, required this.bgcolor, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: bgcolor,
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Icon(icon, size: 30, color: Colors.white),
              Text(text, style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}
