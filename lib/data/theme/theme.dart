import 'package:flutter_ics_homescreen/export.dart';

// ignore_for_file: overridden_fields

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF0D113F),
  useMaterial3: false,
  fontFamily: GoogleFonts.firaSans().fontFamily,
  // Define the default brightness and colors.
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    // ···
    brightness: Brightness.dark,
  ),

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    // ···
    titleLarge: GoogleFonts.oswald(
        fontSize: 30, fontStyle: FontStyle.italic, color: Colors.red),

    titleMedium: GoogleFonts.firaSans(
        color: AGLDemoColors.periwinkleColor, fontSize: 40),
    bodyMedium: GoogleFonts.firaSans(color: AGLDemoColors.periwinkleColor),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white, //here you can give the text color
      titleTextStyle: TextStyle()),
);
