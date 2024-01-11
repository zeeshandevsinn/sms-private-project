import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:sms_application_flutter/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomPinPut extends StatelessWidget {
  CustomPinPut({super.key});
  var code = '';
  var defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  var focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  ).copyDecorationWith(
    borderRadius: BorderRadius.circular(8),
  );

  var submittedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.black),
      borderRadius: BorderRadius.circular(20),
      color: Color.fromRGBO(234, 239, 243, 1),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      onChanged: (value) {
        code = value;
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (value) async {
        // var pro = context.read<SignUpProvider>();

        // pro.OTPCode = value;

        // print(pro.OTPCode);
      },
    );
  }
}
