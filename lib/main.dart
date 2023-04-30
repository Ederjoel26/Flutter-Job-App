import 'package:flutter/material.dart';
import 'package:whatsapp_copy/screens/main_screen.dart';
import 'package:whatsapp_copy/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobFinder',
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF5F5FFF),
        highlightColor: const Color(0XFFB7B7D2),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047)
          ),
          displayMedium: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5F5FFF)
          ),
          bodyLarge: TextStyle(
            fontSize: 20.0,
            color: Color(0XFFB7B7D2)
          ),
          bodySmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),
          headlineMedium: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color(0XFF030047)
          ),
          headlineSmall: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5F5FFF)
          ),
          headlineLarge: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0XFFB7B7D2)
          ),
          displaySmall: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold
          )
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0XFF030047))
      ),
    );
  }
}
