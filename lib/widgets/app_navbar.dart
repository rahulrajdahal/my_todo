import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final String title;

  const AppNavbar({super.key, this.isBack = false, this.title = "My Todo"});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff3f3f3),
      leading: isBack
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            )
          : IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text(
        title,
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
