import 'package:flutter/material.dart';

import '../screens/home/widgets/menu_button.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'GB',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                MenuButton(
                  title: 'HOME',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuButton(
                  title: 'ABOUT',
                ),
                SizedBox(
                  width: 10,
                ),
                MenuButton(
                  title: 'PORTFOLIO',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
