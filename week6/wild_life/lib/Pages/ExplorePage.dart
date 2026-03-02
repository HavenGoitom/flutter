import 'package:flutter/material.dart';
import 'package:wild_life/widget/imageCard.dart';

class ExplorePage extends StatelessWidget {

  final VoidCallback onBack;

  const ExplorePage({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 76, 135),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onBack,
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
            ),
            Text(
              "Trail Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.add_box, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            child: ImageCard(
              imageURL: "assets/images/chenek.webp",
              mainText: "Chenek Trail",
              secondText: "5.2 km - Moderate",
              borderRadius: 0,
              mainTextSize: 30,
              secondTextSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
