import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gareth Beall - Portfolio',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: false,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextButton(
                    child: Text(
                      'HOME',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: textTheme.headline6!.fontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Text(
                      'ABOUT',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: textTheme.headline6!.fontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    
                    child: Text(
                      'PROJECTS',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: textTheme.headline6!.fontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: textWidth,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          'I\'m a Flutter developer with 2 years of experience creating beautiful and functional apps. \n\nI\'m passionate about building intuitive and engaging user experiences, and I love the flexibility and power that Flutter gives me to do that. \n\nMost of my work is open source and publicly available on  ',
                      style: textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    TextSpan(
                      text: 'GitHub.',
                      style: textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: 'You can follow me on  ',
                      style: textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    TextSpan(
                      text: 'Twitter ',
                      style: textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    TextSpan(
                      text:
                          'where I mostly tweet about Vue and frontend technologies.\n\n When I\'m not coding, you can find me surfing, cooking up a storm in the kitchen, or spending quality time with my friends and family. \n\nThank you for stopping by my portfolio, and I hope you enjoy what you see!',
                      style: textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ])),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
