import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme;
    const String assetName = 'images/background.svg';
    return Stack(
      children: <Widget>[
        SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SvgPicture.asset(
            assetName,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: screenSize.height * 0.2,
          left: screenSize.width * 0.2,
          child: SizedBox(
            width: screenSize.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hi, my name is',
                  textAlign: TextAlign.start,
                  style: textTheme.headline6!.copyWith(
                    color: color.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Gareth Beall.',
                    textAlign: TextAlign.start,
                    style: textTheme.headline2!.copyWith(
                      color: color.secondary,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  'I build cool stuff with Flutter.',
                  textAlign: TextAlign.start,
                  style: textTheme.headline2!.copyWith(
                    color: color.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: screenSize.width * 0.4,
                  child: Text(
                    'Crafting exceptional digital experiences.',
                    textAlign: TextAlign.start,
                    style: textTheme.headline6!.copyWith(
                      color: color.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
