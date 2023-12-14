import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/Views/Navbar%20View/Navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        LogoNavbar(),
        Gap(1500),
        Text('data'),
      ])),
    );
  }
}
