import 'package:flutter/material.dart';

class LogoTextWidget extends StatelessWidget {
  const LogoTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Жогорку сапаттагы билим ',
          style: TextStyle(
              fontSize: 84,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Text(
          'алууга мүмкүнчүлүк алыңыз!',
          style: TextStyle(
              fontSize: 26.471,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 202.61,
            height: 75.17,
            decoration: ShapeDecoration(
              color: Color(0xFFF6F5F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(41.09),
              ),
              shadows: [
                BoxShadow(
                    color: Color(0x77FFFFFF),
                    blurRadius: 40,
                    offset: Offset(0, 3.29))
              ],
            ),
            child: Center(
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
          ),
        ),
      ],
    );
  }
}
