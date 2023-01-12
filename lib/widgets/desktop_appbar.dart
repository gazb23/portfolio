// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/screens/home/desktop/desktop_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../screens/home/widgets/menu_button.dart';

class DesktopAppBar extends ConsumerWidget {
  const DesktopAppBar({
    Key? key,
  }) : super(key: key);

  // Pages are stored in a list and the index of the list is used to scroll to the desired page
  final home = 0;
  final about = 1;
  final portfolio = 2;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemScrollController = ref.watch(itemScrollControllerProvider);

    return Container(
      color: Colors.white,
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
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MenuButton(
                  title: 'HOME',
                  onPressed: () async {
                    await scrollTo(
                      itemScrollController: itemScrollController,
                      page: home,
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                MenuButton(
                  title: 'ABOUT',
                  onPressed: () async {
                    await scrollTo(
                      itemScrollController: itemScrollController,
                      page: about,
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                MenuButton(
                  title: 'PORTFOLIO',
                  onPressed: () async {
                    await scrollTo(
                      itemScrollController: itemScrollController,
                      page: portfolio,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> scrollTo(
      {required ItemScrollController itemScrollController,
      required Page page}) async {
    await itemScrollController.scrollTo(
        index: page,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeInOutCubic);
  }
}

typedef Page = int;
