import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class ArticelsCard extends StatelessWidget {
  final String imageUrl;
  final String firstTitle;
  final String secondTitle;
  final String type;
  final bool isFavorite;

  ArticelsCard({
    this.imageUrl,
    this.firstTitle,
    this.secondTitle,
    this.type,
    this.isFavorite,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.only(
        right: 18,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image.asset(
              imageUrl,
              width: 86,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                height: 5,
              ),
              Text(
                type,
                style: mediumTextStyle.copyWith(
                  fontSize: 10,
                  color: greyColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            isFavorite ? Icons.favorite : Icons.favorite_outline,
            color: isFavorite ? redColor : greyColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
