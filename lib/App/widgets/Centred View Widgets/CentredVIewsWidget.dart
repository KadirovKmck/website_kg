import 'package:flutter/material.dart';

class CentredVIewsWidget extends StatelessWidget {
  final Widget child;
  const CentredVIewsWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 55),
      alignment: AlignmentDirectional.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: child,
      ),
    );
  }
}
