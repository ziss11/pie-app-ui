import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';

class SetCount extends StatefulWidget {
  @override
  _SetCountState createState() => _SetCountState();
}

class _SetCountState extends State<SetCount> {
  int countPie = 0;
  num countPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              countPie--;
            });
          },
          child: Image.asset('assets/reduce_btn.png'),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "$countPie",
          style: regularTextStyle.copyWith(
            fontSize: 12,
            color: whiteColor,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              countPie++;
            });
          },
          child: Image.asset('assets/add_btn.png'),
        ),
      ],
    );
  }
}
