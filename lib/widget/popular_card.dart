import 'package:flutter/material.dart';
import 'package:online_course/pages/detail_page.dart';
import 'package:online_course/theme.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String pay;
  final String firstTitle;
  final String secondTitle;
  final String participant;

  PopularCard({
    this.imageUrl,
    this.pay,
    this.firstTitle,
    this.secondTitle,
    this.participant,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage();
        }));
      },
      child: Container(
        height: 205,
        width: 180,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                width: 180,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12,
                top: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pay,
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 12,
                      color: greenColor,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    firstTitle,
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 12,
                      color: lightBlackColor,
                    ),
                  ),
                  Text(
                    secondTitle,
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 12,
                      color: lightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        participant,
                        style: mediumTextStyle.copyWith(
                          fontSize: 10,
                          color: greyColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
