
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LandingPage(),
    );
  }
}
