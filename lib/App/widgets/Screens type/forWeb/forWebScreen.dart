import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Home%20View/HomeView.dart';

class ForWebScreen extends StatefulWidget {
  const ForWebScreen({Key? key}) : super(key: key);

  @override
  _ForWebScreenState createState() => _ForWebScreenState();
}

class _ForWebScreenState extends State<ForWebScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
