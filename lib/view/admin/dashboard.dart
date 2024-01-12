import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';

import '../../utils/container.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Drawer
                  CustomContainer(
                      iconVar: Icon(
                        Icons.dashboard,
                        size: 20,
                        color: AppColors.black,
                      ),
                      text: "DashBoard")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
