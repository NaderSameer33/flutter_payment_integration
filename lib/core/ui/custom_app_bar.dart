import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      elevation: 0,
      leading: Icon(
        Icons.arrow_back_outlined,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
        style: AppStyle.styel25,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
