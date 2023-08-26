import 'package:flutter/material.dart';

const Color _primaryColor = Colors.cyan;
const MaterialColor _primarySwatch = Colors.cyan;

final ThemeData appTheme = ThemeData(
  primaryColor: _primaryColor,
  primarySwatch: _primarySwatch,
);



// ThemeData(
//         // Define the default brightness and colors.
//         brightness: Brightness.dark,
//         primaryColor: Colors.lightBlue[800],

//         // Define the default font family.
//         fontFamily: 'Georgia',

//         // Define the default `TextTheme`. Use this to specify the default
//         // text styling for headlines, titles, bodies of text, and more.
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
//           titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
//           bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
//         ),
//       ),