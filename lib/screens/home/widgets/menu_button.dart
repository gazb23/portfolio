import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const MenuButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
          fontSize: Theme.of(context).textTheme.headline6!.fontSize,
          fontWeight: FontWeight.w400,
          letterSpacing: 3,
        ),
      ),
    );
  }
}
