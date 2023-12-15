import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/NavBar%20Items%20Widgets/NavBarItems.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/Logo%20Widgets/LogoConteinerWidgets.dart';
import 'package:website_kg/App/widgets/extension/hover_extensions.dart';

class LogoNavbar extends StatefulWidget {
  const LogoNavbar({Key? key}) : super(key: key);

  @override
  State<LogoNavbar> createState() => _LogoNavbarState();
}

class _LogoNavbarState extends State<LogoNavbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoConteinerWidgets(),
            NavBarItems(),
          ],
        ).showCursorOnHover.moveUpOnHOver,
      ],
    );
  }
}
