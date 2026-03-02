import 'package:flutter/material.dart';
import 'package:wild_life/Pages/ExplorePage.dart';
import 'package:wild_life/Pages/HomePage.dart';
import 'package:wild_life/Pages/ProfilePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    final List<Widget> pages = [
      MyHomePage(),
      ExplorePage(onBack: () {
        setState(() {
          myIndex = 0; 
        });
      }),
      ProfilePage(onBack: () {
        setState(() {
          myIndex = 0; 
        });
      }),
    ];

    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}