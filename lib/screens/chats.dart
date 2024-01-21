import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class ChatsScreen extends StatefulWidget {
  static const routeName = "/chats";
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  Animation<double>? _rotationAnimation;

  double turns = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _rotationAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.linear);
    _controller.repeat();
  }

  @override
  void dispose() {
    
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: deviceHeight(context) * 0.1,
          ),
          Center(
            child: Transform.scale(
              scale: deviceWidth(context) * 0.003,
              child: Image.asset("assets/images/bro.png"),
            ),
          ),
          SizedBox(
            height: deviceHeight(context) * 0.03,
          ),
          SizedBox(
            width: deviceWidth(context) * 0.8,
            height: deviceHeight(context) * 0.12,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: RotationTransition(
                      turns: _rotationAnimation!,
                      child: Image.asset("assets/images/spinner.png")),
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Coming Soon!",
                        style: TextStyle(
                            fontSize: 30,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "We’ll be up soon, keep an eye on us.",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: -10,
                  bottom: 0,
                  child: Icon(
                    Icons.bolt,
                    size: 30,
                    color: AppColor.primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
