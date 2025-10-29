import 'package:flutter/material.dart';

class AppTheme {
  // 🌞 Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[50],
    primaryColor: Colors.blueAccent,
    useMaterial3: true,
    colorScheme: ColorScheme.light(primary: Colors.blueAccent, secondary: Colors.tealAccent[400]!, surface: Colors.grey[50]!),
    textTheme: _textTheme(Brightness.light),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black87),
    ),
  );

  // 🌙 Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    primaryColor: Colors.tealAccent,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(primary: Colors.tealAccent, secondary: Colors.blueAccent, surface: const Color(0xFF121212)),
    textTheme: _textTheme(Brightness.dark),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

  // 🖋️ Shared Text Theme
  static TextTheme _textTheme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    final baseColor = isDark ? Colors.white : Colors.black87;

    return TextTheme(
      headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: baseColor),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: baseColor),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: baseColor),
      bodyLarge: TextStyle(
        fontSize: 18,
        // 🔧 Use withValues instead of withOpacity
        color: baseColor.withValues(alpha: 0.85),
      ),
      bodyMedium: TextStyle(fontSize: 16, color: baseColor.withValues(alpha: 0.7)),
      labelLarge: TextStyle(fontSize: 14, color: isDark ? Colors.grey[300] : Colors.grey[700]?.withValues(alpha: 1.0)),
    );
  }
}
