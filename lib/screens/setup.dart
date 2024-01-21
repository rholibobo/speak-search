import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/home.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:speaksphere/utils/routing.dart';
import 'package:speaksphere/widgets/app_button.dart';
import 'package:speaksphere/widgets/bottom_navigation.dart';
import 'package:speaksphere/widgets/select_options.dart';

class SetupScreen extends StatefulWidget {
  static const routeName = "/setup";
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  List<String> text = [
    "Studies",
    "Reading",
    "Technologies",
    "Travels",
    "Psychology",
    "Gaming",
    "TV/Movies",
    "Sports",
    "Languages",
    "Fashion",
    "Fitness",
    "Pets",
    "Food",
    "Climate change",
    "Self care",
    "Work life",
    "Culture",
    "Design",
    "Sociology",
    "Music",
    "Outdoor",
    "Networking",
    "Romance",
    "Shopping",
    "Sight-seeing"
  ];
  final Set<int> bulaba = {};

  Widget _buildOptionRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceWidth(context) * 0.03),
      child: Wrap(
        spacing: 15.0,
        runSpacing: 15,
        children: List.generate(text.length, (index) {
          return SelectOption(
            text[index],
            (p0) => increaseProgress(index),
            bulaba,
          );
          // _isButtonClicked.where((state) => state).length >= _isMaxClicked);
        }),
      ),
    );
  }

  var _progressValue = 0.0;
  int valueIncrease = 0;

  void increaseProgress(int index) {
    if (bulaba.contains(index)) {
      setState(
        () {
          bulaba.remove(index);
          _progressValue =
              max(_progressValue - 0.1667, 0); // Ensure min value of 0
          valueIncrease--;
        },
      );
    } else if (bulaba.length < 6) {
      setState(
        () {
          bulaba.add(index);
          _progressValue =
              min(_progressValue + 0.1667, 1.002); // Ensure max value of 6
          valueIncrease++;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left,
          size: 29,
        ),
        actions: [
          Container(
              width: deviceWidth(context) * 0.8,
              height: deviceHeight(context) * 0.01,
              decoration: BoxDecoration(
                  color: AppColor.primaryTextColor,
                  borderRadius: BorderRadius.circular(60)),
              child: LinearProgressIndicator(
                value: _progressValue,
                backgroundColor: AppColor.primaryTextColor,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppColor.offRed),
                minHeight: 10.0,
                borderRadius: BorderRadius.circular(10),
              )),
          SizedBox(
            width: deviceWidth(context) * 0.02,
          ),
          // Text('${(_progressValue * 10).toInt()}/6'),
          Text('$valueIncrease/6'),
          SizedBox(
            width: deviceWidth(context) * 0.01,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What interests you",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: deviceHeight(context) * 0.01,
                ),
                const Text("Select all that applies"),
                SizedBox(
                  height: deviceHeight(context) * 0.01,
                ),
                SizedBox(
                  // width: deviceWidth(context),
                  height: deviceHeight(context) * 0.48,
                  child: ListView(
                    children: [
                      _buildOptionRow(),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: AppColor.offRed,
                    padding: EdgeInsets.all(deviceWidth(context) * 0.03),
                    child: const Text(
                      "Add Others +",
                      style:
                          TextStyle(fontSize: 14, color: AppColor.whiteColor),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                AppButton(() {
                  context.push(BottomNavigationPage.routeName);
                }, "Continue"),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    "Skip for now",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: deviceHeight(context) * 0.02,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
