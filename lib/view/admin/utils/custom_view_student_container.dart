import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

// ignore: must_be_immutable
class CustomViewStudentContainer extends StatelessWidget {
  CustomViewStudentContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.containerText});
  var title = "", subtitle = "", containerText = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: Color.fromARGB(255, 179, 174, 174)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Center(
                    child: Icon(Icons.abc),
                  ),
                ),
                title: Text(
                  title,
                  style: AppTextStyles.textStyleBoldBodyXSmall,
                ),
                subtitle: Text(
                  subtitle,
                  style: AppTextStyles.textStyleBoldBodyXSmall,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    containerText,
                    style: AppTextStyles.textStyleBoldBodyXSmall,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 12,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
