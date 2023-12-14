import 'package:flutter/material.dart';

class CentredVIewsWidget extends StatelessWidget {
  final Widget child;
  const CentredVIewsWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 70),
      alignment: AlignmentDirectional.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
