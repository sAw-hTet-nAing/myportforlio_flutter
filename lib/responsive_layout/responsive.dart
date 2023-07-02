import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileView;
  final Widget desktopView;
  final Widget tabletView;
  const ResponsiveLayout(
      {super.key,
      required this.mobileView,
      required this.desktopView,
      required this.tabletView});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth <= 900) {
                return widget.mobileView;
              } else if (constraints.maxWidth <= 1300) {
                return widget.tabletView;
              } else {
                return widget.desktopView;
              }
            }));
  }
}
