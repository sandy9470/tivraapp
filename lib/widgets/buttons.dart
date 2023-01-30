import 'package:flutter/material.dart';
import 'package:tivra/constants/appScreenSize.dart';

Widget appButton({required double elevation, required double widthRatio, required Color buttonColor,
  required BuildContext context, required buttonTitle, required buttonTitleColor,
  required Function()? onTap}){
  return  SizedBox(
    height: 45,
    width: screenWidth(context)/widthRatio,
    child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(elevation),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                )
            )
        ),
        onPressed: onTap,
        child: Text(buttonTitle, style:  TextStyle(
          color: buttonTitleColor,
          fontSize: 18,
          fontWeight: FontWeight.w400
        ),)),);
}