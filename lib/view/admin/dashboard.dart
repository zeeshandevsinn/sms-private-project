import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/view/admin/utils/customAppbar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List DashboardDrawertext = [
    "Dashboard",
    "Students",
    "Teachers",
    "Staff",
    "Departments",
    "Library",
    "Accounts",
    "Calender",
    "Push Notifications",
    "Settings"
  ];
  List DashboardDrawerIcon = [
    Icon(
      Icons.dashboard,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.cast_for_education,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.people,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.people_alt_outlined,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.local_fire_department,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.library_books,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.account_box,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.calendar_today,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.notifications,
      color: AppColors.Grey,
    ),
    Icon(
      Icons.settings,
      color: AppColors.Grey,
    )
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size * 1;
    return Scaffold(
      body: Column(
        children: [
          CustomAdminAppBar(),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    // height: size.height * .89,
                    decoration: BoxDecoration(
                        border:
                            Border(right: BorderSide(color: AppColors.black))),
                    child: Column(
                      children: [
                        for (var i = 0; i < DashboardDrawerIcon.length; i++)
                          ListTile(
                            leading: DashboardDrawerIcon[i],
                            title: Text(DashboardDrawertext[i]),
                          ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (var i = 0; i <= 5; i++)
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.black,
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )

          // Expanded(
          //   child: Container(
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
    );
  }
}
