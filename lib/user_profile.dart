import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserProfilePicture(),
              SizedBox(height: 16.0),
              UserInfo(
                name: 'Aziza Alijonova',
                age: 20,
                phoneNumber: '+1234567890',
              ),
              SizedBox(height: 16.0),
              OrderHistory(),
              SizedBox(height: 16.0),
              PromoCodes(),
              SizedBox(height: 16.0),
              Settings(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace the placeholder image URL with the actual user's profile picture URL
    const String profilePictureUrl = 'https://example.com/user_profile.jpg';

    return CircleAvatar(
      radius: 50.0,
      backgroundImage: NetworkImage(profilePictureUrl),
    );
  }
}

class UserInfo extends StatelessWidget {
  final String name;
  final int age;
  final String phoneNumber;

  const UserInfo({
    required this.name,
    required this.age,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Name: $name',
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        Text(
          'Age: $age',
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        Text(
          'Phone Number: $phoneNumber',
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your logic to fetch and display the user's order history
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order History',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        // Add the order history items here
      ],
    );
  }
}

class PromoCodes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your logic to fetch and display the user's promo codes
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Promo Codes',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        // Add the promo codes items here
      ],
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your settings UI
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        // Add the settings items here
      ],
    );
  }
}
