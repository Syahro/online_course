import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CourseList extends StatelessWidget {
  final int number;
  final String coursename;
  final String time;

  CourseList({
    this.number,
    this.coursename,
    this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12,
        top: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: lightBlueColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                '$number',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 11,
                  color: blueColor,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coursename,
                style: mediumTextStyle.copyWith(
                  fontSize: 14,
                  color: lightBlackColor,
                ),
              ),
              Text(
                time,
                style: regularTextStyle.copyWith(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
