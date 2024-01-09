import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/splashscreens/four.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class ThirdSplashScreen extends StatefulWidget {
  const ThirdSplashScreen({super.key});

  static const routeName = '/third-splash';

  @override
  State<ThirdSplashScreen> createState() => _ThirdSplashScreenState();
}

class _ThirdSplashScreenState extends State<ThirdSplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(FourthSplashScreen.routeName);
    });
    super.initState();
  }
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
                  // Image.asset("assets/images/voice.png", width: 50, height: 50,),
                  Container(
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.08),
                    child: Image.asset("assets/images/voice.png"),
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
              Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset(
                  "assets/images/splash2.png",
                  fit: BoxFit.contain,
                  width: deviceWidth(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
