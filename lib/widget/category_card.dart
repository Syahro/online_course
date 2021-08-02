import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int countCourse;

  CategoryCard({
    this.imageUrl,
    this.name,
    this.countCourse,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12,
        left: 12,
      ),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: lightBlueColor,
              borderRadius: BorderRadius.circular(21),
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 34,
                height: 34,
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            name,
            style: semiBoldTextStyle.copyWith(
              fontSize: 12,
              color: lightBlackColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '$countCourse Course',
            style: mediumTextStyle.copyWith(
              fontSize: 10,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
