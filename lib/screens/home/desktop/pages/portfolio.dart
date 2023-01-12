import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello.',
                  textAlign: TextAlign.start,
                  style: textTheme.headline2!.copyWith(
                    color: color.primary,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'I\'m Gareth.',
                textAlign: TextAlign.start,
                style: textTheme.headline3!.copyWith(
                  color: color.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Flutter Developer',
                textAlign: TextAlign.start,
                style: textTheme.headline4!.copyWith(
                  color: color.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
