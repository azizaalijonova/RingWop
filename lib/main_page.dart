import 'package:flutter/material.dart';
import 'package:project/main.dart';

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
        ],
      ),
      body: RingList(), // Assuming you have a widget to display a list of rings
      bottomNavigationBar: ControlBar(),
    );
  }
}

class RingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your logic to fetch and display ring images
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10, // Replace with your actual number of rings
      itemBuilder: (context, index) {
        return RingItem(); // Create a widget to display each ring
      },
    );
  }
}

class RingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your logic to display a ring item
    return Card(
      child: Image.network(
        'https://example.com/ring_image.jpg', // Replace with actual image URL
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
      // Add any additional properties or handlers as needed
      onTap: (index) {
        // Handle navigation based on the selected index
        if (index == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserProfilePage()));
        } else {
          // Handle other navigation options if needed
        }
      },
    );
  }
}
