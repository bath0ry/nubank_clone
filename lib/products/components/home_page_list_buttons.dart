import 'package:flutter/material.dart';

class HomePageListButtons extends StatelessWidget {
  final MaterialStateProperty<Color> backgroundColorButton;
  final MaterialStateProperty<OutlinedBorder> shapeButton;
  final MaterialStateProperty<EdgeInsetsGeometry> paddingButton;
  final Icon iconButton;
  final String textButton;
  final EdgeInsetsGeometry paddingText;
  const HomePageListButtons({
    Key? key,
    required this.backgroundColorButton,
    required this.shapeButton,
    required this.paddingButton,
    required this.iconButton,
    required this.textButton,
    required this.paddingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: backgroundColorButton,
            shape: shapeButton,
            padding: paddingButton,
          ),
          onPressed: () {},
          child: iconButton,
        ),
        Padding(
          padding: paddingText,
          child: Text(
            '$textButton',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
