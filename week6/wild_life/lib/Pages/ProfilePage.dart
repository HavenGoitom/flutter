import 'package:flutter/foundation.dart';
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

      body: Container(
        color: const Color.fromARGB(255, 225, 226, 226),
        child: ListView(
          children: [
            Container(
              height: 275,
              width: 275,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),

              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        margin: EdgeInsets.all(20),
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Image.asset(
                            'assets/images/geech-camp-simien.webp',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Simien Mountains National Park",
                            style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(255, 42, 56, 63),
                            ),
                          ),
                          Text(
                            "UNESCO World Heritage Site",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Learn More",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
                        child: Icon(
                          Icons.arrow_right,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // First part ends here haven
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 375,
              width: 300,
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Visitor Guidelines",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 42, 56, 63),
                          ),
                        ),
                        Icon(
                          Icons.info_outline_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 1.0,
                    color: const Color.fromARGB(255, 197, 208, 236),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.blue,
                            size: 15,
                          ),
                        ),
                        Text(
                          "Stay on marked trails.",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.blue,
                            size: 15,
                          ),
                        ),
                        Text(
                          "Carry enough water.",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.blue,
                            size: 15,
                          ),
                        ),
                        Text(
                          "Respect wildlife.",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Second Part finishes here
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 300,
              width: 300,
              margin: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Visitor Guidelines",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 42, 56, 63),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    color: const Color.fromARGB(255, 197, 208, 236),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 225, 179, 194),
                          ),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.favorite, color: Colors.red, size: 35)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 12, 12, 12),
                          child: Text(
                            "Favorite Sports",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(550, 0, 5, 0),
                          child: Icon(
                            Icons.arrow_right,
                            size: 40,
                            color: const Color.fromARGB(255, 117, 127, 135),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 179, 207, 225),
                          ),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.landscape, color: Colors.blue, size: 35)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 12, 12, 12),
                          child: Text(
                            "Booked Campsites",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(504, 0, 5, 0),
                          child: Icon(
                            Icons.arrow_right,
                            size: 40,
                            color: const Color.fromARGB(255, 117, 127, 135),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //3rd part ends here
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 200,
              width: 300,
              margin: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Emergency Numbers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 42, 56, 63),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    color: const Color.fromARGB(255, 197, 208, 236),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 15, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                          ),
                          height: 50,
                          width: 50,

                          child: Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "911, +251582202040",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
