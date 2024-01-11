
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

import 'app_colors.dart';

class CustomButton extends StatelessWidget {
  final text, icon;
  CustomButton({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, top: 20, bottom: 20),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.darkBlue),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.darkBlue,
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: AppTextStyles.textStyleBoldBodySmall,
            )
          ],
        ),
      ),
    );
  }
}
