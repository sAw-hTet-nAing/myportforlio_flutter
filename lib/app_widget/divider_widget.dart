import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget myDividerWidget({required String title, required BuildContext context}) {
  return Row(
    children: [
      Expanded(
          child: Divider(
        indent: Dimensions.screenWidth(context) * 0.05,
        color: Colors.white,
        thickness: 2,
        height: Dimensions.height10(context),
      )),
      Container(
        padding: EdgeInsets.all(Dimensions.width10(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimensions.radius15(context),
            ),
            border: Border.all(width: 2, color: Colors.white)),
        child: Text(
          title,
          style: MyTextStyle.label(context),
        ),
      ),
      Expanded(
          child: Divider(
        endIndent: Dimensions.screenWidth(context) * 0.05,
        color: Colors.white,
        thickness: 2,
        height: Dimensions.height10(context),
      ))
    ],
  );
}
