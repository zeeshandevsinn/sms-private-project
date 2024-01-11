// import 'package:bhai_chara/utils/text-styles.dart';
import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

// ignore: must_be_immutable
class CustomListTileSetting extends StatelessWidget {
  var iconOne, iconTwo, heading, data, tap;
  CustomListTileSetting(
      {super.key,
      this.iconOne,
      this.iconTwo,
      required this.heading,
      required this.data,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      child: Column(children: [
        InkWell(
          onTap: tap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Icon(
                  iconOne,
                  size: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: AppTextStyles.textStyleBoldBodySmall,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      data,
                      style: AppTextStyles.textStyleNormalBodyXSmall,
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  iconTwo,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ]),
    );
  }
}
