import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/screens/home/desktop/pages/about_page.dart';
import 'package:portfolio/screens/home/desktop/pages/portfolio.dart';

import 'package:portfolio/widgets/home_appbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'pages/home_page.dart';

final itemScrollControllerProvider = Provider<ItemScrollController>((ref) {
  return ItemScrollController();
});

final itemsPositionsListenerProvider = Provider<ItemPositionsListener>((ref) {
  return ItemPositionsListener.create();
});

class DesktopHomeScreen extends ConsumerWidget {
  DesktopHomeScreen({
    Key? key,
  }) : super(key: key);

  final pages = [
    const HomePage(),
    const AboutPage(),
    const PortfolioPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemScrollController = ref.watch(itemScrollControllerProvider);
    final itemPositionsListener = ref.watch(itemsPositionsListenerProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: ScrollablePositionedList.builder(
        padding: const EdgeInsets.only(top: 0),
        itemCount: pages.length,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
