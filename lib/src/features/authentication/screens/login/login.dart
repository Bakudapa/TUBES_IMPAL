import 'package:flutter/material.dart';
import '../signup/signup.dart'; // Pastikan file signup.dart ada di direktori yang benar

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50.0),
              // Logo
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/img.png',
                      width: 150.0,
                      height: 150.0,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              // Input Email
              TextField(
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              // Input Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30.0),
              // Tombol Login
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna tombol login
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    // Logic untuk login
                    print("Login button pressed");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // Teks navigasi ke halaman Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "new to us ? ",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman signup
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
