import 'package:flutter/material.dart';

class LikedRingItem extends StatelessWidget {
  final String imageUrl;

  LikedRingItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<String> likedRings = [
    'lib/images/1.jpg',
    'lib/images/2.jpg',
    'lib/images/3.jpg',
  ];

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
          return LikedRingItem(imageUrl: likedRings[index]);
        },
      ),
    );
  }
}
