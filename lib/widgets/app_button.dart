import 'package:flutter/material.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class AppButton extends StatelessWidget {
  const AppButton(this.onTap, this.placeholder, {super.key});
  final VoidCallback onTap;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(deviceWidth(context) * 0.01),
        child: Container(
          alignment: Alignment.center,
          width: deviceWidth(context),
          
          height: deviceHeight(context) * 0.07,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Text(
            placeholder,
            style: const TextStyle(
                color: AppColor.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
