import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: deviceWidth(context) * 0.03),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: deviceWidth(context) * 0.8,
              height: deviceHeight(context) * 0.045,
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
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: deviceWidth(context) * 0.05),
                  child: Image.asset(
                    "assets/images/memoji.png",
                  
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
