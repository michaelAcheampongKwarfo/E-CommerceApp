import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class NavBarButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const NavBarButtons({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 30.0,
        color: AppColor.whiteColor,
      ),
    );
  }
}
