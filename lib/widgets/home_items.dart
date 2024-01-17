import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class HomeGridItems extends StatelessWidget {
  const HomeGridItems(
      this.icon, this.title, this.description, this.progressValue,
      {super.key});
  final String icon;
  final String title;
  final String description;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.05, vertical: deviceHeight(context) * 0.03),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.offRed,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(icon),
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          style: const TextStyle(
              color: AppColor.primaryTextColor,
              fontSize: 11,
              ),
        ),
        SizedBox(height: deviceHeight(context) * 0.009,),
        LinearProgressIndicator(
            value: progressValue,
            backgroundColor: AppColor.primaryTextColor,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColor.offRed),
            minHeight: 9.0,
            borderRadius: BorderRadius.circular(10))
      ]),
    );
  }
}
