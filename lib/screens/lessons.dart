import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:speaksphere/widgets/lesson_items.dart';

class LessonScreen extends StatelessWidget {
  static const routeName = "/lessons";
  const LessonScreen({super.key});

  static const List<dynamic> lessonItems = [
    {
      "image": "assets/images/l1.png",
      "title": "First Trip",
      "description":
          "Here you will listen to conversations between tourists, and learn to speak together with them!",
      "color": Color.fromRGBO(225, 103, 35, 1)
    },
    {
      "image": "assets/images/l2.png",
      "title": "Freelance Work",
      "description":
          "After taking this classes, you will be able to take orders from foreigners!",
      "color": Color.fromRGBO(144, 138, 137, 1)
    },
    {
      "image": "assets/images/l3.png",
      "title": "First Meeting",
      "description":
          "You will learn to communicate with your colleagues and understand them!",
      "color": Color.fromRGBO(203, 153, 55, 1)
    },
    {
      "image": "assets/images/l4.png",
      "title": "Meeting With Partners",
      "description":
          "You will learn to communicate with your colleagues and understand them!",
      "color": Color.fromRGBO(0, 0, 0, 1)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: deviceWidth(context) * 0.8,
              // height: deviceHeight(context) * 0.045,
              margin: EdgeInsets.only(top: deviceWidth(context) * 0.05),
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth(context) * 0.05,
                  vertical: deviceWidth(context) * 0.01),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColor.offWhite),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/uk.png",
                        width: deviceWidth(context) * 0.06,
                      ),
                      const Icon(Icons.arrow_drop_down),
                      SizedBox(
                        width: deviceWidth(context) * 0.1,
                      ),
                      Image.asset(
                        "assets/images/fire.png",
                        width: deviceWidth(context) * 0.035,
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.01,
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                            color: AppColor.offRed,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.1,
                      ),
                      Image.asset(
                        "assets/images/dart.png",
                        width: deviceWidth(context) * 0.035,
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.01,
                      ),
                      const Text(
                        "17",
                        style: TextStyle(
                            color: AppColor.offRed,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Badge(
                    label: null,
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.04),
          child: SizedBox(
            width: deviceWidth(context),
            height: deviceHeight(context),
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight(context) * 0.05,
                ),
                Container(
                  padding: EdgeInsets.all(deviceWidth(context) * 0.01),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColor.offWhite,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                        indicator: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        labelColor: AppColor.whiteColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        unselectedLabelColor: AppColor.offWhite,
                        tabs: const [
                          Tab(
                            child: Text("Audio Lesson"),
                          ),
                          Tab(
                            child: Text("Video Lesson"),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: deviceHeight(context) * 0.05,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding:
                          EdgeInsets.only(bottom: deviceHeight(context) * 0.04),
                      child: LessonItems(
                        lessonItems[index]["image"],
                        lessonItems[index]['title'],
                        lessonItems[index]['description'],
                        lessonItems[index]['color'],
                      ),
                    ),
                    itemCount: lessonItems.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
