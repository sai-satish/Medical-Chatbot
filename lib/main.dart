import 'package:flutter/material.dart';
import 'package:medical_chatbot/SignUpScreen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(21, 119, 112, 1)),
        primaryColor: const Color.fromRGBO(21, 119, 112, 1),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),  // Primary heading
          displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black87), // Secondary heading
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black54), // Body text
          bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black45), // Smaller body text
          labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w300, color: Colors.black45), // Smaller body text
        ),
      ),
      debugShowCheckedModeBanner: false,

      home: const MedicalChatBot(),
    ));
}

class MedicalChatBot extends StatelessWidget {
  const MedicalChatBot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpScreen(),
    );
  }
}