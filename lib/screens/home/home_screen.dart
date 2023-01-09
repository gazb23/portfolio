import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widgets/desktop_body.dart';
import 'package:portfolio/screens/home/widgets/mobile_body.dart';
import 'package:portfolio/widgets/responsive_layout/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}