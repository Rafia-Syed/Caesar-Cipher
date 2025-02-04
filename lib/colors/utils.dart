import 'package:flutter/material.dart';

final TextStyle resultTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.black87,
);

final ButtonStyle customBStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blueAccent,
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  elevation: 4,
);


final InputDecoration customInputDecor = InputDecoration(
  labelText: "Enter a Text...",
  labelStyle: TextStyle(color: Colors.blueAccent),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.blueAccent),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
  ),
  filled: true,
  fillColor: Colors.white,
);
  

final TextStyle customBTextstyle = TextStyle(
  fontSize: 16,
  color: Colors.white,
);
