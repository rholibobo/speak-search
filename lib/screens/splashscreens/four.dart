import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class FourthSplashScreen extends StatefulWidget {
  const FourthSplashScreen({super.key});

  static const routeName = '/fourth-splash';

  @override
  State<FourthSplashScreen> createState() => _FourthSplashScreenState();
}

class _FourthSplashScreenState extends State<FourthSplashScreen> {
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
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.025),
                    child: Image.asset("assets/images/voice.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.05),
                    child: Column(
                      children: [
                        Row(
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
                        Stack(
                          children: [
                            Text(
                              '...speak the world',
                              style: TextStyle(
                                fontSize: 15,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 0.5
                                  ..color = AppColor.redColor,
                              ),
                            ),
                            // Solid text as fill.
                            const Text(
                              '...speak the world',
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ],
                        ),
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
                  "assets/images/splash3.png",
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
