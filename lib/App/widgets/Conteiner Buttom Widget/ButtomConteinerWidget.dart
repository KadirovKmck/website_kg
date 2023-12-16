import 'package:flutter/material.dart';
import 'package:website_kg/App/widgets/extension/hover_extensions.dart';

class ButtomConteinerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? colors;
  final Color? shadowsColors;
  final String title;
  const ButtomConteinerWidget({
    super.key,
    this.width,
    this.height,
    this.colors,
    required this.title,
    this.shadowsColors,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: colors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(41.09),
          ),
          shadows: [
            BoxShadow(
              color: shadowsColors!,
              blurRadius: 3.29,
              offset: Offset(0, 3.29),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ).showCursorOnHover.moveUpOnHOver,
    );
  }
}
