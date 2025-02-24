import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust sizes for small screens (width < 350px)
    double containerWidth = screenWidth < 350 ? 280 : 335;
    double containerHeight = screenWidth < 350 ? 230 : 272;
    double padding = screenWidth < 350 ? 15 : 20;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(padding),
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  height: 31.69 / 26,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                "assets/images/new_logo.png",
                width: 100,
                height: 101,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
