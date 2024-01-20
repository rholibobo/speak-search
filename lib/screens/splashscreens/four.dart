import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/setup.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:animate_do/animate_do.dart';
import 'package:speaksphere/utils/routes_link.dart';
import 'package:speaksphere/utils/routing.dart';

class FourthSplashScreen extends StatefulWidget {
  const FourthSplashScreen({super.key});

  static const routeName = '/fourth-splash';

  @override
  State<FourthSplashScreen> createState() => _FourthSplashScreenState();
}

class _FourthSplashScreenState extends State<FourthSplashScreen> {
  late int currentIndex;
  late List<String> imagePaths;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 6000), () {
      context.push(AppNavigation.interestPath);
    });
    currentIndex = 0;
    imagePaths = [
      'assets/images/splash1.png',
      'assets/images/splash2.png',
      'assets/images/splash3.png',
    ];
    // Start switching images after a delay
    Future.delayed(Duration(seconds: 2), switchImage);
    super.initState();
  }

  void switchImage() {
    if (mounted) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    }

    // Schedule the next image switch after a delay
    Future.delayed(const Duration(seconds: 2), switchImage);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: deviceWidth(context) * 1,
          height: deviceHeight(context) * 1,
          padding: EdgeInsets.only(top: 10),
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
                    child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: Image.asset("assets/images/voice.png")),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.05),
                    child: Column(
                      children: [
                        FadeInUp(
                          duration: const Duration(seconds: 2),
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
                        FadeInRight(
                          duration: const Duration(seconds: 2),
                          child: Stack(
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
              FadeIn(
                duration: const Duration(seconds: 2),
                child: Container(
                  margin: const EdgeInsets.all(0.0),
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: Image.asset(
                      imagePaths[currentIndex],
                      key: ValueKey<int>(currentIndex),
                      fit: BoxFit.contain,
                      width: deviceWidth(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
