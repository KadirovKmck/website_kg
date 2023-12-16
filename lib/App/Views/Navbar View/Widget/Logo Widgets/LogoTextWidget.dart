import 'package:flutter/material.dart';
import 'package:website_kg/App/widgets/extension/hover_extensions.dart';

class LogoTextWidget extends StatelessWidget {
  const LogoTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Жогорку сапаттагы билим ',
          style: TextStyle(
              fontSize: 84,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        const Text(
          'алууга мүмкүнчүлүк алыңыз!',
          style: TextStyle(
              fontSize: 26.471,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 202.61,
              height: 75.17,
              decoration: ShapeDecoration(
                color: const Color(0xFFF6F5F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(41.09),
                ),
                shadows: [
                  const BoxShadow(
                      color: Color(0x77FFFFFF),
                      blurRadius: 40,
                      offset: Offset(0, 3.29))
                ],
              ),
              child: const Center(
                child: Text(
                  'Курсту тандоо',
                  style: TextStyle(
                    color: Color(0xFF17018A),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).showCursorOnHover.moveUpOnHOver,
          ),
        ),
      ],
    );
  }
}
