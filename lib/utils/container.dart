import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

import 'app_colors.dart';

class CustomContainer extends StatelessWidget {
  final iconVar, text;
  CustomContainer({this.iconVar, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: AppColors.darkBlue),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconVar == null
              ? Text("")
              : Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {
                        // pop(context);
                      },
                      icon: iconVar),
                ),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(text,
                  style: AppTextStyles.textStyleBoldBodyMedium
                      .copyWith(color: AppColors.white)))
        ],
      ),
    );
  }
}
