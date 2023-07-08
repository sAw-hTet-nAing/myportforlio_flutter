import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:myportforlio_flutter/app_widget/my_text_field.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';

class SentEmailDialog extends StatefulWidget {
  const SentEmailDialog({super.key});

  @override
  State<SentEmailDialog> createState() => _SentEmailDialogState();
}

class _SentEmailDialogState extends State<SentEmailDialog> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Dialog(
              backgroundColor: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.width20(context)),
                child: SizedBox(
                  width: Dimensions.screenWidth(context) * 0.5,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    myTextField(context,
                        title: "Name",
                        hint: "Your name",
                        icon: Iconsax.profile_circle,
                        controller: controller.nameController),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    myTextField(context,
                        title: "Email",
                        hint: "Your email",
                        icon: BoxIcons.bx_mail_send,
                        controller: controller.emailController),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    myTextField(context,
                        title: "Subject",
                        hint: "Subject",
                        icon: Iconsax.subtitle,
                        controller: controller.subjectController),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    myTextField(context,
                        title: "Message",
                        hint: "Your Message",
                        icon: Iconsax.message,
                        controller: controller.messageController),
                    SizedBox(
                      height: Dimensions.height30(context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => Colors.black38),
                                fixedSize: MaterialStateProperty.resolveWith(
                                    (states) => Size(
                                        Dimensions.screenWidth(context) * 0.2,
                                        Dimensions.height40(context)))),
                            onPressed: () => Get.back(),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.grey),
                            )),
                        SizedBox(width: Dimensions.screenWidth(context) * 0.1),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => AppColor.purple),
                                fixedSize: MaterialStateProperty.resolveWith(
                                    (states) => Size(
                                        Dimensions.screenWidth(context) * 0.2,
                                        Dimensions.height40(context)))),
                            onPressed: () => controller.sentEmail(),
                            child: const Text(
                              "Send",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    )
                  ]),
                ),
              ),
            ));
  }
}
