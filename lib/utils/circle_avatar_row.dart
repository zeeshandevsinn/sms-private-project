import 'package:flutter/material.dart';

class CustomCircleAvatarRow extends StatelessWidget {
  final link, col, txt, ontap, selected;

  CustomCircleAvatarRow(
      {super.key,
      required this.link,
      required this.col,
      required this.txt,
      required this.ontap,
      this.selected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: col,
              child: Image(
                image: AssetImage(link),
                height: 32,
                width: 32,
              ),
              radius: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: selected
                    ? Icon(
                        Icons.arrow_downward,
                        size: 24,
                      )
                    : Icon(
                        Icons.arrow_forward_ios,
                        size: 24,
                      ))
          ],
        ),
      ),
    );
  }
}
