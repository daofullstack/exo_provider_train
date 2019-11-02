import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle display1 = TextStyle(
    fontFamily: 'Schyler',
    color:  Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
    fontFamily: 'Schyler',
    color:  Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static const TextStyle heading = TextStyle(
    fontFamily: 'Schyler',
    color:  Colors.white70,
    fontSize: 34,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
  );
  static const TextStyle subHeading = TextStyle(
    fontFamily: 'Schyler',
    inherit: true,
    color:  Colors.white70,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  );
}