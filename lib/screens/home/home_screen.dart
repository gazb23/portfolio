import 'package:flutter/material.dart';

import 'package:portfolio/screens/home/desktop_screen.dart';
import 'package:portfolio/screens/home/mobile_screen.dart';

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
    return const ResponsiveLayout(
      mobile: MobileHomeScreen(),
      desktop: DesktopHomeScreen(),
    );
  }
}
