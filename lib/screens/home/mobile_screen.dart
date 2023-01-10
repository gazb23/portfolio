import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_appbar.dart';

class MobileHomeScreen extends StatelessWidget  {
  const MobileHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const Drawer(),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
                        letterSpacing: 3)),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: textWidth,
                child: Text('I\'m Gareth Beall.',
                    textAlign: TextAlign.start,
                    style: textTheme.headline4!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
