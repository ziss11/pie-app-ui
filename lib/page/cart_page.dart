import 'package:flutter/material.dart';
import 'package:pie_app/theme/theme.dart';
import 'package:pie_app/widget/button.dart';
import 'package:pie_app/widget/input_text.dart';
import 'package:pie_app/widget/order_list.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
                Text(
                  "My Cart",
                  style: semiBoldTextStyle.copyWith(
                    color: whiteColor,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: blackColor3,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 30,
                    bottom: 12,
                  ),
                  child: Text(
                    "Order List",
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                ),
                OrderList(
                  img: 'assets/pie1.png',
                  name: "Cream Sweet",
                  price: 119.998,
                ),
                OrderList(
                  img: 'assets/pie2.png',
                  name: "Cream Sweet",
                  price: 79.999,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: blackColor2,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(18),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Method",
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/visa_pic.png',
                      width: 45,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "••••  ••••  ••••  2003",
                      style: regularTextStyle.copyWith(
                        fontSize: 14,
                        color: whiteColor,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/expansi_icon.png',
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Divider(
                  color: greyColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Promo Code",
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InputText(
                  hint: "Enter your discount code",
                  fillColor: blackColor3,
                  textColor: greyColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Payment Summary",
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      "IDR 199.997",
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 14,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      "Free",
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 14,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      "IDR 199.997",
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 14,
                        color: yellowColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 70,
                  ),
                  width: MediaQuery.of(context).size.width - (2 * 30),
                  height: 55,
                  child: Button(
                    text: "Order Now",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
