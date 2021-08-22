import 'package:flutter/material.dart';
import 'package:pie_app/model/popular_pie.dart';
import 'package:pie_app/theme/theme.dart';

class PieStatus extends StatelessWidget {
  final PopularPie pie;

  PieStatus({required this.pie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/dollar_icon.png',
          width: 10,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          pie.deliverStatus,
          style: regularTextStyle.copyWith(
            fontSize: 12,
            color: greyColor,
          ),
        ),
        Spacer(),
        Image.asset(
          'assets/time_icon.png',
          width: 10,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          pie.time,
          style: regularTextStyle.copyWith(
            fontSize: 12,
            color: greyColor,
          ),
        ),
        Spacer(),
        Image.asset(
          'assets/star_icon.png',
          width: 10,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "${pie.rate}",
          style: regularTextStyle.copyWith(
            fontSize: 12,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
