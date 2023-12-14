import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Navbar/Navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [LogoNavbar()]),
    );
  }
}
