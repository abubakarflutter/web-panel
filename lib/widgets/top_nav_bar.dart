import 'package:flutter/material.dart';
import 'package:webpanel/helpers/responsive.dart';

import '../constants/colors.dart';
import 'custom_text_widget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    backgroundColor: light,
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: 28,
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: dark.withOpacity(.7),
            )),
    title: Row(
      children: [
        CustomTextWidget(
          text: 'Dashboard',
          textColor: dark.withOpacity(.7),
          // textColor: lightGrey,
          fSize: 20,
          fWeight: FontWeight.bold,
        ),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            )),
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                )),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: active,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: light)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 22,
          child: VerticalDivider(
            width: 2,
            color: lightGrey,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        CustomTextWidget(
          text: 'Abubakar',
          textColor: lightGrey,
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80'),
        ),
      ],
    ),
  );
}
