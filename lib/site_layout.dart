import 'package:flutter/material.dart';
import 'package:webpanel/helpers/responsive.dart';
import 'package:webpanel/widgets/large_screen.dart';
import 'package:webpanel/widgets/small_screen.dart';
import 'package:webpanel/widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
        ),
      ),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
      // const SmallScreen(),
    );
  }
}
