import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  static const background = 'images/about_background.svg';
  static const firebaseLogo = 'images/firebase.svg';
  static const flutterLogo = 'images/flutter_logo.svg';
  static const profilePicture = 'images/profile_picture.png';
  static const openAILogo = 'images/openai_logo.svg';
  static const androidLogo = 'images/android_logo.svg';
  static const dartLogo = 'images/dart_logo.svg';
  static const vsCodeLogo = 'images/vscode_logo.svg';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            background,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.1),
                SelectableText('About Me',
                    style: textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 25),
                const CircularProfilePicture(
                  image: profilePicture,
                ),
                const SizedBox(height: 50),
                Container(
                  width: screenSize.width * 0.60,
                  constraints: const BoxConstraints(
                    minWidth: 500,
                    maxWidth: 800,
                  ),
                  child: SelectableText(
                    'I am a flutter developer with 2 years of experience, who has been working as a freelance designer. During this time, I have done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I am confident in my abilities, naturally curious, and constantly working to improve my skills.',
                    textAlign: TextAlign.justify,
                    style: textTheme.headline5!.copyWith(
                      color: color.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: screenSize.width * 0.30,
                  constraints: const BoxConstraints(
                    minWidth: 500,
                    maxWidth: 800,
                  ),
                  child: SelectableText(
                    'Here are a few technologies I\'ve been working with recently:',
                    textAlign: TextAlign.justify,
                    style: textTheme.headline5!.copyWith(
                      color: color.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: screenSize.width * 0.60,
                  constraints: const BoxConstraints(
                    minWidth: 500,
                    maxWidth: 500,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TechStackWidget(
                        image: flutterLogo,
                      ),
                      TechStackWidget(
                        image: firebaseLogo,
                      ),
                      TechStackWidget(
                        image: openAILogo,
                      ),
                      TechStackWidget(
                        image: androidLogo,
                      ),
                      TechStackWidget(
                        image: dartLogo,
                      ),
                      TechStackWidget(
                        image: vsCodeLogo,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TechStackWidget extends StatelessWidget {
  final String image;
  const TechStackWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SvgPicture.asset(
          image,
          height: 50,
          semanticsLabel: 'Logo',
        ),
      ),
    );
  }
}

class CircularProfilePicture extends StatelessWidget {
  final String image;

  const CircularProfilePicture({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 300,
        maxWidth: 300,
        minHeight: 200,
        minWidth: 200,
      ),
      width: screenSize.width * 0.2,
      height: screenSize.width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: color.onPrimary, width: 5),
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
      ),
    );
  }
}
