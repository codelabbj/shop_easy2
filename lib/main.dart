import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_easy3/screens/mobile/pages/home_mobile_screen.dart';
import 'package:shop_easy3/screens/mobile/utils/theme/app_theme_light.dart';

void main() {
  runApp(const MyApp());
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.white,
  primary: Color(0xFFFF5722),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: HomeMobileScreen(),
    );
  }
}
