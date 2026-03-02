import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shop),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 100, 8),
              child: Text("MyShop"),
            ),
            Text("Products"),
            Text("Cart"),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 300, 
            width: 400, 
            color: const Color.fromARGB(255, 243, 33, 187)),
            Container(
            height: 200, 
            width: 200, 
            color: const Color.fromARGB(255, 33, 243, 75)),
            Container(
            height: 100, 
            width: 100, 
            color: const Color.fromARGB(255, 198, 243, 33)),
            
            ],
            
      ),
    );
  }
}
