import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myportforlio_flutter/app_binding/app_binding.dart'
    as dependicies;
import 'package:myportforlio_flutter/responsive_layout/responsive.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_desktop_view.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/home_mobile_view.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_tablet_view/home_tablet_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependicies.AppBinding.init();
  Future.delayed(const Duration(milliseconds: 300));
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Saw Htet Naing',
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
