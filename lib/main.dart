// FILE INI UNTUK MENYAMBUNGKAN SEMUA PAGE YANG ADA
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:diarybeautygirls/welcome_screen.dart';
import 'package:diarybeautygirls/home_screen.dart';
import 'package:diarybeautygirls/signup.dart';
import 'package:diarybeautygirls/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(MyApp()); // MyApp() ini untuk menjalankan aplikasi ini
}

class MyApp extends StatelessWidget {
  // Widget ini adalah akar dari aplikasi ini
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debugShowCheckedModeBanner ini berfungsi label debug diatas kanan
      initialRoute: 'welcome_screen', // initialRoute ini untuk awal page yang akan tampil saat aplikasi dibuka
      routes: { // Route ini berfungsi untuk insialisasi setiap class yang sudah di import
        'welcome_screen': (context) => WelcomeScreen(),
        // Seperti WelcomeScreen() yang berada di welcome_screen.dart ada class yang bernama WelcomeScreen menggunakan statefull widget
        'registration_screen': (context) => RegistrationScreen(),
        // Seperti RegistrationScreen() yang berada di signup.dart ada class yang bernama RegistrationScreen menggunakan statefull widget
        'login_screen': (context) => LoginScreen(),
        // Seperti LoginScreen() yang berada di login.dart ada class yang bernama LoginScreen menggunakan statefull widget
        'home_screen': (context) => HomeScreen()
        // Seperti HomeScreen() yang berada di home_screen.dart ada class yang bernama HomeScreen menggunakan statefull widget
      },
    );
  }
}
