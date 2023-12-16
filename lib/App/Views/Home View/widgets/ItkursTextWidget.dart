
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItkursTextWidget extends StatelessWidget {
  final String text;
  final String images;
  final Color? color;
  const ItkursTextWidget(
      {super.key, required this.text, this.color, required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        text,
        style: const TextStyle(
          color: Color(0xFF4223DA),
          fontSize: 18,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      const Gap(35),
      Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
        ),
      )
    ]);
  }
}
