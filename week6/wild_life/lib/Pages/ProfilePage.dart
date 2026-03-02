import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {

  final VoidCallback onBack;

  const ProfilePage({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 124, 215),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onBack,
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
            ),
            Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.info, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
      body: ListView(children: [Text("test")]),
    );
  }
}
