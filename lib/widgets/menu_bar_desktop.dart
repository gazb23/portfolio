import 'package:flutter/material.dart';

import '../screens/home/widgets/menu_button.dart';

class MenuBarDesktop extends StatelessWidget {
  const MenuBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.grey.shade500,
                size: 30,
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
