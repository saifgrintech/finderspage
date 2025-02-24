import 'package:flutter/material.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/login.dart';
import 'package:projects/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/pages/welcome.dart';
import 'package:projects/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'Finderspage',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark, // Adapts to system setting
      initialRoute: MyRoutes.welcome,
      // initialRoute:"/",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.welcome: (context) => Welcome(),
        // '/': (context) => HomePage(),
        // '/home': (context) => HomePage(),
        // '/login': (context) => LoginPage(),
      },
    );
  }
}
