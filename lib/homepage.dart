import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hami_swap/modals/menuitem.dart';

import 'screens/home_screen.dart';
import 'screens/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItemm currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        mainScreen: const HomeScreen(),
        // mainScreen: getScreen(),
        menuScreen: MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);
            }),
        // borderRadius: 24.0,
        showShadow: true,
        borderRadius: 24.0,

        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.grey.shade300,
        moveMenuScreen: false,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      );

  // Widget  getScreen() {
  //   switch (currentItem) {
  //     case MenuItems.home:
  //       return HomeScreen();

  //   }
  // }
}
