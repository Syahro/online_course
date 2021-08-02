import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widget/articels_card.dart';
import 'package:online_course/widget/bottom_floating.dart';
import 'package:online_course/widget/category_card.dart';
import 'package:online_course/widget/popular_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 75,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Want to Study Class\nwhat\'s Today?',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 18,
                          color: lightBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CategoryCard(
                              imageUrl: 'assets/design.png',
                              name: 'Design',
                              countCourse: 49,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            CategoryCard(
                              imageUrl: 'assets/skill.png',
                              name: 'Soft Skill',
                              countCourse: 12,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            CategoryCard(
                              imageUrl: 'assets/art.png',
                              name: 'Art',
                              countCourse: 50,
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: defaultMargin,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Course',
                              style: semiBoldTextStyle.copyWith(
                                fontSize: 14,
                                color: lightBlackColor,
                              ),
                            ),
                            Text(
                              'Show all',
                              style: mediumTextStyle.copyWith(
                                fontSize: 10,
                                color: blueColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PopularCard(
                              imageUrl: 'assets/popular1.png',
                              pay: 'Free',
                              firstTitle: 'UI Design : Wireframe',
                              secondTitle: 'to Visual Design',
                              participant: '(4016)',
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            PopularCard(
                              imageUrl: 'assets/popular2.png',
                              pay: 'Free',
                              firstTitle: 'UI Design : Styleguide',
                              secondTitle: 'with Figma',
                              participant: '(1055)',
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: defaultMargin,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Articles',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 14,
                                    color: lightBlackColor,
                                  ),
                                ),
                                Text(
                                  'Show all',
                                  style: mediumTextStyle.copyWith(
                                    fontSize: 10,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ArticelsCard(
                              imageUrl: 'assets/artikel1.png',
                              firstTitle: 'How to: Work faster as',
                              secondTitle: 'Full Stack Designer',
                              type: 'UI Design',
                              isFavorite: true,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ArticelsCard(
                              imageUrl: 'assets/artikel2.png',
                              firstTitle: 'How to: Digital Art from',
                              secondTitle: 'Sketch',
                              type: 'All Course',
                              isFavorite: false,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                defaultMargin,
                0,
                defaultMargin,
                12,
              ),
              height: 54,
              width: double.infinity,
              color: backgroundColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/user.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 25,
                        color: blackCOlor.withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/notif.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
