
import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

// ignore: must_be_immutable
class CustomList extends StatelessWidget {
  var text;
  CustomList({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: AppColors.black,
          ),
        ),
        Container(
            width: double.infinity,
            child: Text(
              text,
              style: AppTextStyles.textStyleNormalBodyXSmall,
            ))
      ],
    );
  }
}
