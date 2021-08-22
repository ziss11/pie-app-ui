import 'package:flutter/material.dart';
import 'package:pie_app/model/popular_pie.dart';
import 'package:pie_app/page/detail_page.dart';
import 'package:pie_app/theme/theme.dart';

class PopularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: listPopularPie.map(
        (item) {
          index++;
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(pie: item),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                right: index == listPopularPie.length ? 30 : 12,
                left: index == 1 ? 30 : 0,
              ),
              width: 150,
              decoration: BoxDecoration(
                color: blackColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item.img,
                            width: 126,
                            height: 136,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 111),
                          padding: EdgeInsets.all(5),
                          width: 86,
                          height: 25,
                          decoration: BoxDecoration(
                            color: blackColor1.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            item.time,
                            textAlign: TextAlign.center,
                            style: mediumTextStyle.copyWith(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      item.name,
                      style: mediumTextStyle.copyWith(
                        fontSize: 14,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: yellowColor,
                        ),
                        Text(
                          "${item.rate}",
                          style: mediumTextStyle.copyWith(
                            fontSize: 12,
                            color: yellowColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
