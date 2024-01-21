import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:speaksphere/widgets/app_button.dart';

class SpeakingScreen extends StatelessWidget {
  static const routeName = "/speaking";
  const SpeakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_rounded),
        title: LinearProgressIndicator(
          value: 0.7,
          backgroundColor: AppColor.primaryTextColor,
          valueColor: const AlwaysStoppedAnimation<Color>(AppColor.offRed),
          minHeight: 10.0,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Speak the sentence",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.05,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        EdgeInsetsDirectional.all(deviceWidth(context) * 0.02),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.volume_up,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.06,
                  ),
                  const Text(
                    "Bonjour, Buchi, enchante",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.15,
                  ),
                  ZoomIn(child: Image.asset("assets/images/speaker.png")),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.2,
            ),
            const Text(
              "Brilliant!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.01,
            ),
            const Text("Meaning"),
            SizedBox(
              height: deviceHeight(context) * 0.01,
            ),
            const Text("Hello, Buchi, nice to meet you"),
            SizedBox(
              height: deviceHeight(context) * 0.04,
            ),
            AppButton(() {
              context.pop();
            }, "Continue"),
          ],
        ),
      ),
    );
  }
}
