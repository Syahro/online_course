import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class BottomDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: whiteColor,
              padding: EdgeInsets.only(
                left: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: mediumTextStyle.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    'Free',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 19,
                      color: greenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: whiteColor,
              child: Container(
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Start Course',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 14,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
