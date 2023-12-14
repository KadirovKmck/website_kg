
import 'package:flutter/material.dart';

class NavBarItemsWidget extends StatelessWidget {
  const NavBarItemsWidget(
      {super.key,
      required this.title,
      this.icon,
      this.onPressed,
      this.color,
      this.colorIcon});
  final String title;
  final IconData? icon;
  final Function()? onPressed;
  final Color? color;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: color,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: colorIcon,
            ))
      ],
    );
  }
}
