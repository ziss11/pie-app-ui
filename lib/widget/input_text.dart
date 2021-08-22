import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';

class InputText extends StatelessWidget {
  final String hint;
  final IconButton? icon;
  final Color fillColor;
  final Color textColor;

  InputText({
    required this.hint,
    this.icon,
    required this.fillColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: regularTextStyle.copyWith(
        color: greyColor,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: fillColor,
        hintText: hint,
        hintStyle: regularTextStyle.copyWith(
          color: textColor,
          fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 15,
        ),
        suffixIcon: icon,
      ),
    );
  }
}
