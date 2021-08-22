import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/category_list.dart';
import 'package:pie_app/widget/popular_list.dart';
import 'package:pie_app/widget/input_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/profile_pic.png'),
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Hello, ",
                        style: mediumTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "Shadam",
                            style: mediumTextStyle.copyWith(
                              color: yellowColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "What Pie you want to try today?",
                      style: regularTextStyle.copyWith(
                        color: greyColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: InputText(
              hint: "Find your favorite Pie",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: greyColor,
                ),
              ),
              fillColor: blackColor2,
              textColor: greyColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: blackColor3,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(18),
              ),
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    "Category",
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: CategoryList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    "Popular Sweet Pie",
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 223,
                  child: PopularList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
