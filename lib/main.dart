// main.dart

import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'favorites_page.dart';
import 'user_profile.dart';
import 'sign_in_page.dart'; // Import the SignInPage

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
        appBarTheme: AppBarTheme(
          color: Color(0xFFfaf3a5),
        ),
        scaffoldBackgroundColor: Color(0xFFfaf3a5),
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
      color: Colors.white,
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
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Color(0xFFfaf3a5),
      onTap: (index) {
        // Handle navigation based on the selected index
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoritesPage()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserProfilePage()),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserProfilePicture(),
              SizedBox(height: 16.0),
              UserInfo(
                name: 'John Doe',
                age: 30,
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

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Color(0xFFfaf3a5), // Set color for the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your sign-in logic here
                String email = _emailController.text;
                String password = _passwordController.text;
                // Perform authentication or navigation based on credentials
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
