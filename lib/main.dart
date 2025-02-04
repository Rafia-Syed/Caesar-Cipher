import 'package:flutter/material.dart';
import 'package:caesar_cipher/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caesar Cipher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueAccent,
          elevation: 4,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blueAccent, // Change cursor color to Blue Accent
          selectionColor: Colors.blue.withAlpha(100), // Selected text highlight
          selectionHandleColor: Colors.blueAccent, // Handle (draggable part)
        ),
        useMaterial3: true,
      ),
      home: const Caesar_Cipher(),
    );
  }
}
