import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget navButtons(BuildContext context,
    {required String title,
    required Function()? onPress,
    required bool onPage}) {
  return Container(
    decoration: BoxDecoration(
        color: onPage ? AppColor.purple : Colors.transparent,
        borderRadius: BorderRadius.circular(Dimensions.radius15(context)),
        boxShadow: [
          onPage
              ? const BoxShadow(
                  offset: Offset(4, 4),
                  color: Colors.white24,
                  blurRadius: 2,
                  spreadRadius: 2)
              : const BoxShadow(color: Colors.transparent)
        ]),
    child: TextButton(
        onPressed: onPress,
        child: Text(
          title,
          style: MyTextStyle.labelSmall(context),
        )),
  );
}
