import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/view/admin/utils/customAppbar.dart';
import 'package:sms_application_flutter/view/admin/utils/custom_view_student_container.dart';
import 'package:sms_application_flutter/view/admin/utils/drawer.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // ignore: non_constant_identifier_names
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
  // ignore: non_constant_identifier_names
  List DashboardDrawerIcon = const [
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
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size * 1;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(size.width, 70),
          child: const CustomAdminAppBar()), // draer: DrawerAdminCustom(),
      body: Row(
        children: [
          // First Container - Custom Drawer (20% width)
          Container(
            width: size.width * .15,
            child: const DrawerAdminCustom(),
          ),

          // Second Container (80% width)
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              // Your layout with rows and columns goes here
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomViewStudentContainer(
                          icons_set: Icons.people,
                          title: "Total Students",
                          subtitle: "404",
                          containerText: "Students",
                        ),
                        CustomViewStudentContainer(
                          icons_set: Icons.favorite,
                          title: "Total Teachers",
                          subtitle: "404",
                          containerText: "Teachers",
                        ),
                        CustomViewStudentContainer(
                          icons_set: Icons.work_outline,
                          title: "Total Departments",
                          subtitle: "404",
                          containerText: "Departments",
                        ),
                        CustomViewStudentContainer(
                          icons_set: Icons.group,
                          title: "Other Staff",
                          subtitle: "404",
                          containerText: "Staff",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
