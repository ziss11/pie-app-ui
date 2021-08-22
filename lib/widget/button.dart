import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';

class Button extends StatelessWidget {
  final String text;

  Button({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: semiBoldTextStyle.copyWith(
          color: whiteColor,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          yellowColor,
        ),
      ),
    );
  }
}
