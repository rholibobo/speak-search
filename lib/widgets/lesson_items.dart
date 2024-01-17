import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class LessonItems extends StatelessWidget {
  const LessonItems(this.image, this.title, this.description,this.color, {super.key});
  final String image;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth(context),
      height: deviceHeight(context) * 0.19,
      child: Stack(
        children: [
          Container(
            height: deviceHeight(context) * 0.16,
            padding: EdgeInsets.symmetric(
                horizontal: deviceWidth(context) * 0.05,
                vertical: deviceHeight(context) * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(color: AppColor.whiteColor, fontSize: 13),
                ),
                
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(deviceWidth(context) * 0.012),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(50)),
              child: const Icon(
                Icons.play_arrow,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
