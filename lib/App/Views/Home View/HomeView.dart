import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/Views/Home%20View/widgets/CotologsitWidgets.dart';
import 'package:website_kg/App/Views/Navbar%20View/NavbarView.dart';
import 'package:website_kg/App/Views/PopularKurs/PopularKurs.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              LogoNavbar(),
              Gap(50),
              CotologsItWidgets(),
              Gap(150),
              PopularKurs(),
              Gap(150),
            ],
          ),
        ),
      ),
    );
  }
}
