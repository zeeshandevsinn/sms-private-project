import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerAdminCustom extends StatelessWidget {
  DrawerAdminCustom({super.key});
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
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.cast_for_education,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.people,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.people_alt_outlined,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.local_fire_department,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.library_books,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.account_box,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.calendar_today,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.notifications,
      // color: AppColors.Grey,
    ),
    Icon(
      Icons.settings,
      // color: AppColors.Grey,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        ListTile(
          leading: DashboardDrawerIcon[index],
          title: Text(DashboardDrawertext[index]),
        );
        return null;
      },
    );
  }
}
