import 'package:flutter/material.dart';
import 'package:sms_application_flutter/common/custom_list_tile.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -1),
              color: AppColors.lightblue),
        ],
        color: const Color(0xfaFFFFFF),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTile(
                title_widget: Icons.home,
                subtitle_widget: "Home",
              ),
              CustomTile(
                title_widget: Icons.chat,
                subtitle_widget: "Chat",
              ),
              CustomTile(
                title_widget: Icons.sell,
                subtitle_widget: "Sell",
              ),
              CustomTile(
                title_widget: Icons.apps,
                subtitle_widget: "Ads",
              ),
              CustomTile(
                title_widget: Icons.person,
                subtitle_widget: "Account",
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Text(
          //       "Chat",
          //       style: AppTextStyles.textStyleSubtitleBody,
          //     ),
          //     Text(
          //       "Sell",
          //       style: AppTextStyles.textStyleSubtitleBody,
          //     ),
          //     Text(
          //       "Ads",
          //       style: AppTextStyles.textStyleSubtitleBody,
          //     ),
          //     Text(
          //       "Account",
          //       style: AppTextStyles.textStyleSubtitleBody,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
