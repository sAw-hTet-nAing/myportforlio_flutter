import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget myTextField(BuildContext context,
    {required String title,
    required String hint,
    required IconData icon,
    required TextEditingController controller}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: MyTextStyle.labelSmall(context),
      ),
      SizedBox(
        height: Dimensions.height10(context),
      ),
      Container(
        padding: EdgeInsets.all(Dimensions.height10(context)),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius:
                BorderRadius.circular(Dimensions.radius15(context) / 2)),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: Dimensions.width20(context),
            ),
            Expanded(
                child: TextFormField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none,
                  hintStyle: MyTextStyle.normalsmall(context)),
            ))
          ],
        ),
      )
    ],
  );
}
