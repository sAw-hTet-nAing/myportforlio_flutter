import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/nav_buttons.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double appBarHeight = 50;
  @override
  void initState() {
    super.initState();
  }

  bool isShowAppbar = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: LottieBuilder.asset(
            "assets/animations/space.json",
            width: Dimension.screenWidth(context),
            height: Dimension.screenHeight(context),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(gradient: AppColor.backGroundGr),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                  isShowAppbar ? Dimension.height40(context) : 0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  navButtons(context, title: "Home", onPress: () {}),
                  navButtons(context, title: "Projects", onPress: () {}),
                  navButtons(context, title: "About Me", onPress: () {}),
                  navButtons(context, title: "Contact Me", onPress: () {})
                ],
              ),
            ),
            body: SingleChildScrollView(
              controller: _scrollController,
              padding:
                  EdgeInsets.symmetric(horizontal: Dimension.width10(context)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimension.height10(context),
                    ),
                    introductionWidget(context),
                    SizedBox(
                      height: Dimension.height10(context),
                    ),
                    introductionWidget(context),
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
