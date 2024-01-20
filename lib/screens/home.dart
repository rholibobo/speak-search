import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:speaksphere/utils/routing.dart';
import 'package:speaksphere/widgets/home_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<dynamic> items = [
    {
      "image": "assets/images/notebook.png",
      "title": "Reading",
      "description": "You completed 50%",
      "progressValue": 0.5,
    },
    {
      "image": "assets/images/headphone.png",
      "title": "Listening",
      "description": "You completed 50%",
      "progressValue": 0.5,
    },
    {
      "image": "assets/images/handwriting.png",
      "title": "Writing",
      "description": "You completed 70%",
      "progressValue": 0.7,
    },
    {
      "image": "assets/images/head.png",
      "title": "Speaking",
      "description": "You completed 25%",
      "progressValue": 0.25,
    },
    {
      "image": "assets/images/books.png",
      "title": "Books",
      "description": "You completed 80%",
      "progressValue": 0.8,
    },
    {
      "image": "assets/images/smiley.png",
      "title": "Quizzes",
      "description": "You completed 40%",
      "progressValue": 0.4,
    },
    {
      "image": "assets/images/smiley.png",
      "title": "Quizzes",
      "description": "You completed 40%",
      "progressValue": 0.4,
    },
    {
      "image": "assets/images/smiley.png",
      "title": "Quizzes",
      "description": "You completed 40%",
      "progressValue": 0.4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      GestureDetector(
                        onTap: () {
                          context.push(AppNavigation.streaksPath);
                        },
                        child: Image.asset(
                          "assets/images/fire.png",
                          width: deviceWidth(context) * 0.035,
                        ),
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
            Container(
                margin: EdgeInsets.only(top: deviceWidth(context) * 0.05),
                child: Image.asset(
                  "assets/images/memoji.png",
                )),
          ],
        ),
      ),
      body: FadeInUpBig(
        duration: const Duration(seconds: 1),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight(context) * 0.03,
                  ),
                  SizedBox(
                    width: deviceWidth(context),
                    height: deviceHeight(context),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Your",
                                  style: TextStyle(
                                    color: AppColor.offRed,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Learning Sphere",
                                  style: TextStyle(
                                    color: AppColor.offRed,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: deviceWidth(context) * 0.02),
                              child: const Icon(
                                Icons.qr_code,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: deviceHeight(context) * 0.03,
                        ),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemBuilder: (ctx, index) {
                              return HomeGridItems(
                                  items[index]["image"],
                                  items[index]["title"],
                                  items[index]["description"],
                                  items[index]["progressValue"]);
                            },
                            itemCount: items.length,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
