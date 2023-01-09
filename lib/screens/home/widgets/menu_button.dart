import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;

  const MenuButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
          fontSize: Theme.of(context).textTheme.headline6!.fontSize,
          fontWeight: FontWeight.w400,
          letterSpacing: 3,
        ),
      ),
      onPressed: () {},
    );
  }
}
