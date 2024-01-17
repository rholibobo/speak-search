import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:speaksphere/widgets/app_button.dart';

class StreaksScreen extends StatelessWidget {
  static const routeName = "/streaks";
  const StreaksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            SizedBox(height: deviceHeight(context) * 0.1,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: deviceWidth(context) * 0.1),
              child: Image.asset("assets/images/voicegray.png",),
            ),
            const Text(
              "2",
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 150,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "days streak!",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: deviceWidth(context) * 0.01,
                ),
                Image.asset(
                  "assets/images/fire.png",
                  width: 15,
                )
              ],
            ),
            SizedBox(
              height: deviceHeight(context) * 0.08,
            ),
            Container(
              width: deviceWidth(context),
              height: deviceHeight(context) * 0.18,
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth(context) * 0.04,
                  vertical: deviceWidth(context) * 0.04),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(230, 230, 218, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Mon",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicered.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Tue",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicered.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Wed",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicegrey.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Thu",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicegrey.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Fri",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicegrey.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Sat",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicegrey.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              "Sun",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset("assets/images/voicegrey.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.02,
                  ),
                  const Text(
                    "You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(height: deviceHeight(context) * 0.15,),
            Column(
              children: [
                AppButton(() {}, "Continue"),
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


// 
