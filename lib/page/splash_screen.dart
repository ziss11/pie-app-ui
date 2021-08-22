import 'package:flutter/material.dart';
import 'package:pie_app/page/main_page.dart';
import 'package:pie_app/theme/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor1,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/chef_img.png',
                width: 375,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 165,
                left: 270,
              ),
              child: Image.asset('assets/Flaticon_Like.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 291,
                decoration: BoxDecoration(
                  color: blackColor2,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 40,
                    left: 43,
                    right: 43,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "PieLove Anetto",
                        textAlign: TextAlign.center,
                        style: semiBoldTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Let's taste the Pie Cake made by Chef Bimo Semesta",
                        textAlign: TextAlign.center,
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: greyColor,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 290,
                        height: 55,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(yellowColor),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Let’s Order",
                            style: semiBoldTextStyle.copyWith(
                              fontSize: 20,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
