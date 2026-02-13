import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  
  final List<Map<String, dynamic>> categories = const [
    {
      "name": "Technology",
      "icon": Icons.computer,
      "color": Color(0xFF3F51B5),
      "articles": 243,
    },
    {
      "name": "Sports",
      "icon": Icons.emoji_events,
      "color": Color(0xFF4CAF50),
      "articles": 195,
    },
    {
      "name": "Business",
      "icon": Icons.work_outline,
      "color": Color(0xFFE91E63),
      "articles": 132,
    },
    {
      "name": "Health",
      "icon": Icons.favorite_border,
      "color": Color(0xFFF44336),
      "articles": 110,
    },
    {
      "name": "Entertainment",
      "icon": Icons.play_circle_outline,
      "color": Color(0xFFFF4081),
      "articles": 87,
    },
    {
      "name": "World News",
      "icon": Icons.public,
      "color": Color(0xFF673AB7),
      "articles": 78,
    },
    {
      "name": "Science",
      "icon": Icons.science_outlined,
      "color": Color(0xFF009688),
      "articles": 65,
    },
    {
      "name": "Environment",
      "icon": Icons.eco_outlined,
      "color": Color(0xFF2E7D32),
      "articles": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth =
        (screenWidth * 0.75) / 2; 

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), 
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Explore news by topic',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: cardWidth / 130, 
            ),
            itemBuilder: (context, index) {
              final category = categories[index];
              return Container(
                width: cardWidth,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon box
                    Container(
                      decoration: BoxDecoration(
                        color: category["color"],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Icon(
                        category["icon"],
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category["name"],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600, 
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${category["articles"]} articles",
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, 
        selectedItemColor: const Color(0xFF7B1FA2),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
