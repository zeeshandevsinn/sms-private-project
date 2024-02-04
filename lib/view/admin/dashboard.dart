import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';
import 'package:sms_application_flutter/view/admin/utils/customAppbar.dart';
import 'package:sms_application_flutter/view/admin/utils/custom_line_chart.dart';
import 'package:sms_application_flutter/view/admin/utils/custom_view_student_container.dart';
import 'package:sms_application_flutter/view/admin/utils/drawer.dart';
import 'package:sms_application_flutter/view/admin/utils/price_points.dart';

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
              margin: const EdgeInsets.only(top: 20, left: 10),
              // My layout with rows and columns goes here
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // height: size.height * .45,
                    width: size.width * .43,
                    // color: AppColors.grey,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.Grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Admission Overview",
                                style: AppTextStyles.textStyleBoldBodyMedium,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Monday",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.arrow_downward,
                                            size: 13, color: Colors.white)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * .40,
                          width: size.width * .40,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: true),
                              titlesData: FlTitlesData(
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false))),
                              borderData: FlBorderData(
                                show: true,
                                border: Border.all(
                                    color: const Color(0xff37434d), width: 1),
                              ),
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              maxY: 100,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 40), // January
                                    FlSpot(0, 40), // January
                                    FlSpot(1, 40), // February
                                    FlSpot(2, 40), // February
                                    FlSpot(3, 45), // February
                                    FlSpot(4, 40), // February
                                    FlSpot(5, 45), // February
                                    FlSpot(6, 40), // February
                                    FlSpot(7, 40), // February
                                    FlSpot(8, 40),
                                    // March
                                    // Add more data points for each month
                                  ],
                                  isCurved: true,
                                  color: Colors.blue,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(show: false),
                                ),
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 30), // January
                                    FlSpot(1, 30), // February
                                    FlSpot(2, 30), // February
                                    FlSpot(3, 35), // February
                                    FlSpot(4, 40), // February
                                    FlSpot(5, 35), // February
                                    FlSpot(6, 40), // February
                                    FlSpot(7, 30), // February
                                    FlSpot(8, 30), // March
                                    // Add more data points for each month
                                  ],
                                  isCurved: true,
                                  color: Colors.pink,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(show: false),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //     height: size.height * .40,
                  //     width: size.width * .40,
                  //     child: CustomLineChart(LineChartData()))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
