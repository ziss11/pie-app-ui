import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_app/cubit/page_cubit.dart';
import 'package:pie_app/page/cart_page.dart';
import 'package:pie_app/page/home_page.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/bottom_navbar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return CartPage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: blackColor1,
          floatingActionButton: BottomNavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: buildContent(currentIndex),
        );
      },
    );
  }
}
