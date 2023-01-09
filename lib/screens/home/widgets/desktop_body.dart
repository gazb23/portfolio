import 'package:flutter/material.dart';

import '../../../widgets/menu_bar_desktop.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const MenuBarDesktop(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: textWidth,
                child: Text('Hello.',
                    textAlign: TextAlign.start,
                    style: textTheme.headline2!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: textWidth,
                child: Text('My name is Gareth Beall.',
                    textAlign: TextAlign.start,
                    style: textTheme.headline4!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
