import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    required List<Padding> actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
      title: Image.asset(
        "assets/Nature.png",
        width: 240,
      ),
      leading: leading,
    );
  }
}
