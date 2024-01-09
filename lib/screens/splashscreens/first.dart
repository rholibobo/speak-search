import 'package:flutter/material.dart';
import '../../screens/splashscreens/second.dart';
import '../../utils/colors.dart';
import '../../utils/media_query.dart';
import 'package:go_router/go_router.dart';

class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({super.key});

  @override
  State<FirstSplashScreen> createState() => _FirstSplashScreenState();
}

class _FirstSplashScreenState extends State<FirstSplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(SecondSplashScreen.routeName);
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
                  Container(
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.08),
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Speak",
                            style: TextStyle(
                              color: AppColor.offWhite,
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              
                            ),
                          ),
                          TextSpan(
                            text: "Sphere",
                            style: TextStyle(
                                color: AppColor.offRed,
                                fontSize: 35,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
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
