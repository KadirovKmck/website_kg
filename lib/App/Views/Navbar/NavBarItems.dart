import 'package:flutter/material.dart';

class NavBarItems extends StatefulWidget {
  const NavBarItems({Key? key}) : super(key: key);

  @override
  _NavBarItemsState createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  bool isCategoriRead = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            NavBarItemsWidget(
              title: 'Категориялар',
              icon: isCategoriRead ? Icons.chevron_right : Icons.expand_more,
              onPressed: () {
                isCategoriRead = !isCategoriRead;
                setState(() {});
              },
            )
          ],
        )
      ],
    );
  }
}

class NavBarItemsWidget extends StatelessWidget {
  const NavBarItemsWidget(
      {super.key, required this.title, this.icon, this.onPressed});
  final String title;
  final IconData? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
        IconButton(onPressed: () {}, icon: Icon(icon))
      ],
    );
  }
}
