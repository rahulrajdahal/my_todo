import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text(
        "My Todo",
        style: TextStyle(
          color: Colors.black,
          fontSize: getProportionateScreenWidth(24),
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
    );
  }
}
