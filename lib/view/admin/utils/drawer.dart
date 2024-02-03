import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';

class DrawerAdminCustom extends StatefulWidget {
  const DrawerAdminCustom({Key? key}) : super(key: key);

  @override
  _DrawerAdminCustomState createState() => _DrawerAdminCustomState();
}

class _DrawerAdminCustomState extends State<DrawerAdminCustom> {
  int _selectedItemIndex = 0;

  List<String> dashboardDrawerText = [
    "Dashboard",
    "Students",
    "Teachers",
    "Staff",
    "Departments",
    "Library",
    "Accounts",
    "Calendar",
    "Push Notifications",
    "Settings",
  ];

  List dashboardDrawerIcon = [
    Icons.dashboard,
    Icons.cast_for_education,
    Icons.people,
    Icons.people_alt_outlined,
    Icons.local_fire_department,
    Icons.library_books,
    Icons.account_box,
    Icons.calendar_today,
    Icons.notifications,
    Icons.settings,
  ];

  double _selectedItemHeight = 50.0;
  double _defaultItemHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(right: BorderSide(color: AppColors.Grey))),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: dashboardDrawerText.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedItemIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: _selectedItemIndex == index
                        ? _selectedItemHeight
                        : _defaultItemHeight,
                    color: _selectedItemIndex == index
                        ? Colors.blue
                        : Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        dashboardDrawerIcon[index],
                        color: _selectedItemIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                      title: Text(
                        dashboardDrawerText[index],
                        style: TextStyle(
                            color: _selectedItemIndex == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
