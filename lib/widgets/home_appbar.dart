import 'package:flutter/material.dart';
import 'package:portfolio/constants/breakpoints.dart';
import 'package:portfolio/widgets/desktop_appBar.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme;
    if (screenSize.width < Breakpoint.mobile) {
      return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: color.onBackground,
        ),
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            'GB',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),
          ),
        ),
      );
    } else {
      return PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: const DesktopAppBar(),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
