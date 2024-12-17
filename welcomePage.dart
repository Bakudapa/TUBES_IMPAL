import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalHallo(),
  ));
}

class HalHallo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/img.png', // Path ke file logo
              width: 250.0, // Lebar logo
              height: 250.0, // Tinggi logo
            ),
            // Spasi antara logo dan tombol
            SizedBox(height: 30.0),
            // Tombol "Get Started"
            new Container(
              color: Colors.blueAccent,
              width: 350.0,
              height: 50.0,
              child: new Center(
                child: new Text(
                  "Get Started",
                  style: new TextStyle(
                    color: Colors.white,
                    fontFamily: "serif",
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            // Spasi antara tombol dan teks
            SizedBox(height: 40.0),
            // Teks "Atur jadwal minum obatmu!"
            new Text(
              "Atur jadwal minum obatmu!",
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            // Spasi antara judul dan deskripsi
            SizedBox(height: 38.0),
            // Teks deskripsi
            new Text(
              "Jangan lewatkan jadwal obatmu! Buat pengingat yang sesuai dengan kebutuhan harianmu.",
              style: new TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
