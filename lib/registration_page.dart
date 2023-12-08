
// registration_page.dart

import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Color(0xFFfaf3a5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _surnameController,
              decoration: InputDecoration(
                labelText: 'Surname',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _dobController,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
              ),
            ),
            SizedBox(height: 16.0),
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
                labelText: 'Create Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your registration logic here
                String name = _nameController.text;
                String surname = _surnameController.text;
                String dob = _dobController.text;
                String email = _emailController.text;
                String password = _passwordController.text;
                // Perform user registration or navigation based on input
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

