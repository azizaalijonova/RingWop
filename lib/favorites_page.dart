// favorites_page.dart

import 'package:flutter/material.dart';

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

class FavoritesPage extends StatelessWidget {
  final List<String> likedRings = [
    'Ring 1',
    'Ring 2',
    'Ring 3',
  ]; // Example list of liked rings

  @override
  Widget build(BuildContext context) {
    // Replace this with logic to fetch and display liked ring images
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
