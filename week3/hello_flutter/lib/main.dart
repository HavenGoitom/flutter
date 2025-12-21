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
        title: const Text("Welcome to Flutter"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "This is my first Flutter app",
          style: TextStyle(
            fontSize: 24, // Changed text size
            color: Colors.deepPurple, // Changed text color
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
