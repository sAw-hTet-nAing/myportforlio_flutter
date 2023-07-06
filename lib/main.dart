import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:motion/motion.dart';
import 'package:myportforlio_flutter/app_binding/app_binding.dart';
import 'package:myportforlio_flutter/responsive_layout/responsive.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_desktop_view.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/home_mobile_view.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_tablet_view/home_tablet_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Motion.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: AppBinding(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ResponsiveLayout(
          mobileView: HomeMobileView(),
          tabletView: HomeTabletView(),
          desktopView: HomeScreen(),
        ));
  }
}
