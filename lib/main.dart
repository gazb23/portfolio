import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:portfolio/constants/color_schemes.g.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: Portfolio()));
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gareth Beall - Portfolio',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: false,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
