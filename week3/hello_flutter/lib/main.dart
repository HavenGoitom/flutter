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
    //  debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 88, 210),
        title: Center(child: Text("cat")),
      ),
      body: Container(
        child: Center(child: Expanded(
          child:Image.asset('assets/images/cat.webp', fit:  BoxFit.cover,) )),
      ),
    );
  }
}
