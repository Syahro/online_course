import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin + 5),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/home.png',
            width: 20,
            height: 20,
          ),
          Image.asset(
            'assets/explore.png',
            width: 20,
            height: 20,
          ),
          Image.asset(
            'assets/whist.png',
            width: 20,
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/user.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
