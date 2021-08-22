import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedItem = -1;

  Widget icon(int index, String name, String img) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: selectedItem == index ? yellowColor : blackColor2,
            ),
            child: Image.asset(img),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: selectedItem == index
                ? mediumTextStyle.copyWith(
                    fontSize: 12,
                    color: whiteColor,
                  )
                : regularTextStyle.copyWith(
                    fontSize: 12,
                    color: greyColor,
                  ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon(
          0,
          "Salty Pie",
          'assets/salty_pie.png',
        ),
        icon(
          1,
          "Sweet Pie",
          'assets/sweet_pie.png',
        ),
        icon(
          2,
          "Fruit Pie",
          'assets/fruit_pie.png',
        ),
        icon(
          3,
          "Drinks",
          'assets/drinks.png',
        ),
      ],
    );
  }
}
