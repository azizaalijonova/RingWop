// main.dart

import 'package:flutter/material.dart';
import 'favorites_page.dart'; // Import the FavoritesPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ring Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ring Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesPage()),
              );
            },
          ),
        ],
      ),
      body: RingList(),
      bottomNavigationBar: ControlBar(),
    );
  }
}

class RingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return RingItem();
      },
    );
  }
}

class RingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        'https://example.com/ring_image.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class ControlBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.blue, // Color for the selected icon
      unselectedItemColor: Colors.grey, // Color for unselected icons
      onTap: (index) {
        // Handle navigation based on the selected index
        if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserProfilePage()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoritesPage()),
          );
        } else {
          // Handle other navigation options if needed
        }
      },
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Text('User Profile Page'),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<String> likedRings = [
    'Ring 1',
    'Ring 2',
    'Ring 3',
  ]; // Example list of liked rings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: likedRings.length,
        itemBuilder: (context, index) {
          return LikedRingItem();
        },
      ),
    );
  }
}

class LikedRingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        'https://example.com/liked_ring_image.jpg', // Replace with actual image URL
        fit: BoxFit.cover,
      ),
    );
  }
}
