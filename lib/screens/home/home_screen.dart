import 'package:flutter/material.dart';

import 'package:portfolio/screens/home/desktop/desktop_screen.dart';
import 'package:portfolio/screens/home/mobile/mobile_screen.dart';

import 'package:portfolio/widgets/responsive_layout/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileHomeScreen(),
      desktop: DesktopHomeScreen(),
    );
  }
}
