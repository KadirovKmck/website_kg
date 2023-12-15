import 'package:flutter/material.dart';

class NavBarItemsKategoriWidget extends StatelessWidget {
  const NavBarItemsKategoriWidget(
      {super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
