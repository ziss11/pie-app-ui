import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/navbar_icon.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85,
      decoration: BoxDecoration(
        color: blackColor2,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(18),
        ),
      ),
      child: NavbarIcon(),
    );
  }
}
