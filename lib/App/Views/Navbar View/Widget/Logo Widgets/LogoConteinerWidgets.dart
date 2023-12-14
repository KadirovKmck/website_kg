import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/Logo%20Widgets/LogoTextWidget.dart';
import 'package:website_kg/App/Views/Navbar%20View/Widget/Logo%20Widgets/searchLogoWidget.dart';
import 'package:website_kg/App/widgets/Centred%20View%20Widgets/CentredVIewsWidget.dart';

class LogoConteinerWidgets extends StatelessWidget {
  const LogoConteinerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 800,
          width: 715,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/shestiUgolnik.png'),
                fit: BoxFit.cover),
          ),
          child: const CentredVIewsWidget(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Logo',
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    SerchLogoWidget(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: LogoTextWidget(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
