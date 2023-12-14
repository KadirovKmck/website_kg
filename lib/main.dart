import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Home%20View/HomeView.dart';

void main(List<String> args) {
  runApp(MyWebSite());
}

class MyWebSite extends StatelessWidget {
  const MyWebSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Inter')),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
