import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Home%20View/HomeView.dart';

void main(List<String> args) {
  runApp(MyWebSite());
}

class MyWebSite extends StatelessWidget {
  const MyWebSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
