import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget navButtons(BuildContext context,
    {required String title, required Function()? onPress}) {
  return TextButton(
      onPressed: onPress,
      child: Text(
        title,
        style: MyTextStyle.labelSmall(),
      ));
}
