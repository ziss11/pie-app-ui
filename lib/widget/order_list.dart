import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/set_count.dart';

class OrderList extends StatefulWidget {
  final String img;
  final String name;
  final double price;

  OrderList({required this.img, required this.name, required this.price});

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {},
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 24),
        padding: EdgeInsets.all(12),
        width: MediaQuery.of(context).size.width,
        height: 84,
        decoration: BoxDecoration(
          color: blackColor2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.img,
                width: 60,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "IDR ${widget.price}",
                  style: mediumTextStyle.copyWith(
                    fontSize: 14,
                    color: yellowColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            SetCount(),
          ],
        ),
      ),
    );
  }
}
