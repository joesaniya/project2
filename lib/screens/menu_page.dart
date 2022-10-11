import 'package:flutter/material.dart';
import 'package:hami_swap/modals/menuitem.dart';

class MenuItems {
  static var home = MenuItemm('Home', Icons.home);
  static var trade = MenuItemm('Trade', Icons.track_changes);
  static var socialMedia = MenuItemm('Social Medial', Icons.group);
  static var more = MenuItemm('More', Icons.more_horiz);

  static var all = <MenuItemm>[home, trade, socialMedia, more];
}

class MenuPage extends StatelessWidget {
  final MenuItemm currentItem;
  final ValueChanged<MenuItemm> onSelectedItem;
  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            const Spacer(
              flex: 2,
            )
          ],
        )),
      );

  Widget buildMenuItem(MenuItemm item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
