import 'package:flutter/material.dart';
import 'package:pie_app/model/popular_pie.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/button.dart';
import 'package:pie_app/widget/pie_status.dart';
import 'package:pie_app/widget/set_count.dart';

class DetailPage extends StatefulWidget {
  final PopularPie pie;

  DetailPage({required this.pie});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor1,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              widget.pie.img,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  margin: EdgeInsets.only(top: 416),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: blackColor3,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pie.name,
                        style: semiBoldTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "IDR ${widget.pie.price}",
                        style: mediumTextStyle.copyWith(
                          color: yellowColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: blackColor2,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: PieStatus(pie: widget.pie),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        widget.pie.desc,
                        style: regularTextStyle.copyWith(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SetCount(),
                          Spacer(),
                          Text(
                            "IDR ${widget.pie.price}",
                            style: semiBoldTextStyle.copyWith(
                              fontSize: 16,
                              color: yellowColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - (2 * 30),
                        height: 55,
                        child: Button(text: "Checkout Now"),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: blackColor1,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Pie Details",
                    style: semiBoldTextStyle.copyWith(
                      color: blackColor1,
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    icon: Icon(
                      isFav
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_rounded,
                      color: isFav ? yellowColor : blackColor1,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
