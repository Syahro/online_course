import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widget/bottom_detail.dart';
import 'package:online_course/widget/category_detail_card.dart';
import 'package:online_course/widget/course_list.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: BottomDetail(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 203,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                'assets/popular1.png',
                                width: double.infinity,
                                height: 203,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: whiteColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: whiteColor.withOpacity(0.6),
                                    size: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'UI Design : Wireframe to\nVisual Design',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 18,
                          color: lightBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/user1.png',
                              width: 36,
                              height: 36,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Shem Bizo',
                                style: semiBoldTextStyle.copyWith(
                                  fontSize: 14,
                                  color: lightBlackColor,
                                ),
                              ),
                              Text(
                                'Mentor UI Designer',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 10,
                                  color: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.chevron_right,
                            color: lightBlackColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryDetailCard(
                          type: 'About',
                          isActive: false,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CategoryDetailCard(
                          type: 'Lesson',
                          isActive: true,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CategoryDetailCard(
                          type: 'Tools',
                          isActive: false,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CategoryDetailCard(
                          type: 'Resource',
                          isActive: false,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CategoryDetailCard(
                          type: 'Reviews',
                          isActive: false,
                        ),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course List',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: lightBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                          width: double.infinity,
                          height: 331,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                CourseList(
                                  number: 1,
                                  coursename: 'Visual Design Intro',
                                  time: '04:47',
                                ),
                                CourseList(
                                  number: 2,
                                  coursename: 'Design Reference',
                                  time: '03:45',
                                ),
                                CourseList(
                                  number: 3,
                                  coursename: 'Create Moodboard',
                                  time: '03:45',
                                ),
                                CourseList(
                                  number: 4,
                                  coursename:
                                      'Wireframe to Visual Design Part 1',
                                  time: '09:03',
                                ),
                                CourseList(
                                  number: 5,
                                  coursename:
                                      'Wireframe to Visual Design Part 2',
                                  time: '09:03',
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: 51,
                width: double.infinity,
                color: backgroundColor,
                padding: EdgeInsets.fromLTRB(
                  defaultMargin,
                  20,
                  defaultMargin,
                  0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: blackCOlor,
                    ),
                    Text(
                      'Course Details',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 14,
                        color: lightBlackColor,
                      ),
                    ),
                    Image.asset(
                      'assets/bookmark.png',
                      width: 12,
                      height: 14,
                      color: blackCOlor,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
