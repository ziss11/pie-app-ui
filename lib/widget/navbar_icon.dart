import 'package:flutter/material.dart';
import 'package:pie_app/cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_app/theme/theme.dart';

int selectedIndex = 0;

class NavbarIcon extends StatefulWidget {
  @override
  _NavbarIconState createState() => _NavbarIconState();
}

class _NavbarIconState extends State<NavbarIcon> {
  int selectedIndex = 0;
  Widget icon(int index, String imgBefore, String imgAfter, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
          context.read<PageCubit>().setPage(index);
        });
      },
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            selectedIndex == index ? imgAfter : imgBefore,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            label,
            style: mediumTextStyle.copyWith(
              fontSize: 14,
              color: selectedIndex == index ? yellowColor : greyColor,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon(
          0,
          'assets/home_icon.png',
          'assets/home_icon_hover.png',
          "Home",
        ),
        icon(
          1,
          'assets/cart_icon.png',
          'assets/cart_icon_hover.png',
          "Cart",
        ),
        icon(
          2,
          'assets/love_icon.png',
          'assets/love_icon_hover.png',
          "Love",
        ),
        icon(
          3,
          'assets/profile_icon.png',
          'assets/profile_icon_hover.png',
          "Profile",
        ),
      ],
    );
  }
}
