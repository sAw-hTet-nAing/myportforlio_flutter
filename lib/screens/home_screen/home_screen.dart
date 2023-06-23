import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/screens/home_screen/cubit/home_cubit.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: LottieBuilder.asset("assets/animations/space.json"),
        ),
        Container(
          decoration: BoxDecoration(gradient: AppColor.backGroundGr),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Home",
                      style: MyTextStyle.label(context),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Projects",
                      style: MyTextStyle.label(context),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Services",
                      style: MyTextStyle.label(context),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Contact Me",
                      style: MyTextStyle.label(context),
                    ))
              ],
            ),
            body: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimension.width10(context)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimension.height10(context),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: Dimension.screenWidth(context) * 0.2,
                                    child: Text(
                                      """Hi,""",
                                      style: MyTextStyle.heading(context),
                                    )),
                                SizedBox(
                                    width: Dimension.screenWidth(context) * 0.5,
                                    child: Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: AppConstant.introductionText,
                                          style: MyTextStyle.normal(context)),
                                      TextSpan(
                                          text: AppConstant.introductionText1,
                                          style: MyTextStyle.label(context)),
                                      TextSpan(
                                          text: AppConstant.introductionText2,
                                          style: MyTextStyle.normal(context)),
                                    ])))
                              ],
                            ),
                            LottieBuilder.asset(
                              "assets/animations/astronaut.json",
                              height: Dimension.screenHeight(context) * 0.4,
                              width: Dimension.screenWidth(context) * 0.4,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),

                        // if (state is HomeInitial) Text(state.index.toString()),
                        // ButtonBar(
                        //   alignment: MainAxisAlignment.center,
                        //   children: [
                        //     TextButton(
                        //         onPressed: () {
                        //           BlocProvider.of<HomeCubit>(context).increaseCounter();
                        //         },
                        //         child: const Text(
                        //           "Data +",
                        //         )),
                        //     TextButton(
                        //         onPressed: () => BlocProvider.of<HomeCubit>(context)
                        //             .decreaseCounter(),
                        //         child: const Text(
                        //           "Data -",
                        //         )),
                        //   ],
                        // ),
                        // BlocBuilder<ButtonCubit, ShowButtonState>(
                        //     builder: (context, state) {
                        //   if (state is ButtonInitial) {
                        //     return Column(
                        //       children: [
                        //         state.isShow
                        //             ? const Text("Showing Text")
                        //             : const SizedBox.shrink(),
                        //         TextButton(
                        //             onPressed: () =>
                        //                 BlocProvider.of<ButtonCubit>(context)
                        //                     .showText(),
                        //             child: const Text(
                        //               "Show Text",
                        //             )),
                        //       ],
                        //     );
                        //   } else {
                        //     return Container();
                        //   }
                        // }),
                      ]),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
