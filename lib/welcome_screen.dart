import 'package:flutter/material.dart';
import 'package:diarybeautygirls/roundedbutton.dart'; // MEMANGGIL ROUNDEDBUTTON DI roundedbutton.dart
import 'package:google_fonts/google_fonts.dart';      // MEMANGGIL FONTFAMILY DARI GOOGLE FONTS


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Membuat warna background menjadi putih
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0), // Memberikan padding secara horizontal
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,    // Membuat MainAxis(Horizontal) menjadi di tengah
              crossAxisAlignment: CrossAxisAlignment.stretch, // Membuat CrossAxis(Vertical) menjadi pas setiap widget
              children: <Widget>[
                Center(     // Membuat semuanya di tengah
                  child: Text(      // Membuat Text
                    'Welcome to',
                    style: GoogleFonts.hurricane(     // Font Family dari GoogleFonts
                      textStyle: TextStyle(
                        color: Colors.pink, 
                        letterSpacing: .5 ,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                      ),
                    ), 
                  ),
                ),
                Center(
                  child: new Image.asset("assets/images/logofull.png")      // Asset Gambar
                ),
                RoundedButton(      // RoundedButton membuat button yang berbentuk rounded
                  colour: Colors.pink,
                  title: 'Log In',
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');     // Untuk pindah ke page login
                  },
                ),
                RoundedButton(
                    colour: Colors.pinkAccent,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushNamed(context, 'registration_screen');      // Untuk pindah ke page registerasi
                    }),
              ]),
        ));
  }
}
