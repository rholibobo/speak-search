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
    Future.delayed(const Duration(seconds: 2), () {
      context.go(SecondSplashScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceWidth(context) ,
          height: deviceHeight(context),
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
              Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset(
                  "assets/images/splash1.png",
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
