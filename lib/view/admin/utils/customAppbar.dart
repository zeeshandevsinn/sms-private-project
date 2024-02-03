import 'package:flutter/material.dart';
import 'package:sms_application_flutter/utils/image_widget.dart';
import 'package:sms_application_flutter/utils/text-styles.dart';

class CustomAdminAppBar extends StatelessWidget {
  const CustomAdminAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 192, 190, 190)))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 30, top: 10),
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right:
                        BorderSide(color: Color.fromARGB(255, 192, 190, 190)))),
            child: Column(
              children: [
                Row(
                  children: [
                    ImageWidget(
                      profileImage: "assets/images/logo.jpg",
                      // size: 18,
                      isRadius: true,
                    ),
                    Text(
                      "Swift ",
                      style: AppTextStyles.textStyleBoldBodySmall
                          .copyWith(color: Color.fromARGB(255, 222, 117, 236)),
                    ),
                    Text(
                      "School ",
                      style: AppTextStyles.textStyleBoldBodySmall
                          .copyWith(color: Color.fromARGB(255, 222, 117, 236)),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    ImageWidget(
                      profileImage:
                          "data:image/png;base64,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",
                      size: 20,
                      isRadius: true,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.brightness_high,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Container(
                      width: 200,
                      child: ListTile(
                        // minLeadingWidth: 80,
                        leading: ImageWidget(
                          profileImage: "assets/images/logo.jpg",
                          // size: 30,
                          isRadius: true,
                        ),
                        title: Text(
                          "Admin",
                          style: AppTextStyles.textStyleBoldBodyXSmall,
                        ),
                        subtitle: Text("Jack Margin"),
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
