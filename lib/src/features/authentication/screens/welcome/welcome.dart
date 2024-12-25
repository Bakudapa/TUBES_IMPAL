import 'package:flutter/material.dart';
import '../login/login.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    'images/img.png',
                    width: 250.0,
                    height: 250.0,
                  ),
                  SizedBox(height: 30.0),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,  // Button color
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),  // Adjust size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Rounded corners
                      ),
                    ),
                    onPressed: () {
                      // Navigate to the login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),  // Pastikan LoginPage ada di login.dart
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "serif",
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  // Main text
                  Text(
                    "Atur jadwal minum obatmu!",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 38.0),
                  // Subtext
                  Text(
                    "Jangan lewatkan jadwal obatmu! Buat pengingat yang sesuai dengan kebutuhan harianmu.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          // Full-stretched dokter.png image at the bottom
          SizedBox(
            height: 400.0, // Adjust the height as needed
            child: Image.asset(
              'images/dokter.png',
              fit: BoxFit.cover, // Stretches the image to fill the container
              width: double.infinity, // Ensures the image fills the width
            ),
          ),
        ],
      ),
    );
  }
}
