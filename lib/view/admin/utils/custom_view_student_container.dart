import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

// ignore: must_be_immutable
class CustomViewStudentContainer extends StatelessWidget {
  CustomViewStudentContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.containerText,
      required this.icons_set});
  var title = "", subtitle = "", containerText = "", icons_set;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: Color.fromARGB(255, 179, 174, 174)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Center(
                  child: Icon(icons_set),
                ),
              ),
              title: Text(
                title,
                style: AppTextStyles.textStyleBoldBodyXSmall
                    .copyWith(color: const Color.fromARGB(255, 10, 114, 155)),
              ),
              subtitle: Text(
                subtitle,
                style: AppTextStyles.textStyleBoldBodyMedium
                    .copyWith(fontSize: 20),
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
                  style: AppTextStyles.textStyleBoldBodyXSmall
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 12,
                )
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
