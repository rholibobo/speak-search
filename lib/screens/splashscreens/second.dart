import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  static const routeName = '/second-splash';

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceWidth(context) * 1,
          height: deviceHeight(context) * 1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splashbg.png'),
                fit: BoxFit.cover,
                opacity: 0.06,
              ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColor.splashScreentop,
                    AppColor.splashScreenbottom,
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: deviceWidth(context) * 0.1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.08),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Text(
                              'Speak',
                              style: TextStyle(
                                fontSize: 35,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = AppColor.redColor,
                              ),
                            ),
                            // Solid text as fill.
                            const Text(
                              'Speak',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w600,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Sphere",
                          style: TextStyle(
                              color: AppColor.redColor,
                              fontSize: 35,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Image.asset("assets/images/splashicon.png"),
                ],
              ),
              // SizedBox(
              //   height: deviceHeight(context) * 0.06,
              // ),
              Padding(
                padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.07),
                child: Stack(
                  children: [
                    SizedBox(
                      width: deviceWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/splashchat.png",
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/splashmale.png",
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: deviceHeight(context) * 0.16),
                      child: Image.asset(
                        "assets/images/splashfemale.png",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
