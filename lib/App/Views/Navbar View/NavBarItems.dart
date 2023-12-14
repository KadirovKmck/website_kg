import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/NavBar%20Items%20Widgets/NavBarItemsKursiWidget.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/NavBar%20Items%20Widgets/NavBarItemsWidget.dart';
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
              const Gap(20),
              const NavBarItemsKursiWidget(
                title: 'Менин курсум',
              ),
              const Gap(20),
              const NavBarItemsKursiWidget(
                title: 'Корзина',
              ),
              const Gap(20),
              NavBarItemsWidget(
                title: 'КЫР',
                icon: isCategoriRead ? Icons.chevron_right : Icons.expand_more,
                colorIcon: const Color(0xFF4223DA),
                color: const Color(0xFF4223DA),
              ),
              const Gap(20),
              Container(
                width: 106,
                height: 41,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF4223DA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(41.09),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x59444444),
                      blurRadius: 3.29,
                      offset: Offset(0, 3.29),
                    ),
                  ],
                ),
                child: const Center(
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
          const Gap(55),
          Container(
            width: 635,
            height: 446,
            decoration: const BoxDecoration(
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
