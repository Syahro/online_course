import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CategoryDetailCard extends StatelessWidget {
  final String type;
  final bool isActive;

  CategoryDetailCard({
    this.type,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: isActive ? lightBlueColor : whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        type,
        style: regularTextStyle.copyWith(
          fontSize: 12,
          color: isActive ? blueColor : lightBlackColor,
        ),
      ),
    );
  }
}
