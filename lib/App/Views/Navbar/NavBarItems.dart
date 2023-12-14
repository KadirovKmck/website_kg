import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/widgets/Centred%20View%20Widgets/CentredVIewsWidget.dart';

class NavBarItems extends StatefulWidget {
  const NavBarItems({Key? key}) : super(key: key);

  @override
  _NavBarItemsState createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  bool isCategoriRead = true;

  @override
  Widget build(BuildContext context) {
    return CentredVIewsWidget(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItemsWidget(
                title: 'Категориялар',
                icon: isCategoriRead ? Icons.chevron_right : Icons.expand_more,
              ),
              Gap(20),
              NavBarItemsKursiWidget(
                title: 'Менин курсум',
              ),
              Gap(20),
              NavBarItemsKursiWidget(
                title: 'Корзина',
              ),
              Gap(20),
              NavBarItemsWidget(
                title: 'КЫР',
                icon: isCategoriRead ? Icons.chevron_right : Icons.expand_more,
                colorIcon: Color(0xFF4223DA),
                color: Color(0xFF4223DA),
              ),
              Gap(20),
              Container(
                width: 106,
                height: 41,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFF4223DA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(41.09),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x59444444),
                      blurRadius: 3.29,
                      offset: Offset(0, 3.29),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Кирүү',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(55),
          Container(
            width: 635,
            height: 446,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/LogoNoutbook.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

class NavBarItemsKursiWidget extends StatelessWidget {
  const NavBarItemsKursiWidget(
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
