import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webpanel/site_layout.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Web Panel',
      theme: ThemeData(
          scaffoldBackgroundColor: kAppWhiteBackgroundColor,
          textTheme:
              GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: kTextBlackColor,
          ),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
            },
          ),
          primaryColor: kAppPrimaryColor),
      home: SiteLayout(),
    );
  }
}
