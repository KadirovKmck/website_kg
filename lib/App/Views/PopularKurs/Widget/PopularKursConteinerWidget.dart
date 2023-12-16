
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PopularKursConteinerWidget extends StatelessWidget {
  final String title;
  final String assetName;

  const PopularKursConteinerWidget(
      {super.key, required this.title, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(41.09),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x59444444),
            blurRadius: 3.29,
            offset: Offset(0, 3.29),
          ),
        ],
      ),
      width: 393,
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 225,
                  height: 49,
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 74,
                  height: 78,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(assetName), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                ' 10 000 c',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Gap(10),
            const Row(
              children: [
                Icon(
                  Icons.schedule,
                  color: Color(0xFF868686),
                ),
                Text(
                  '60 с.',
                  style: TextStyle(color: Color(0xFF868686), fontSize: 16),
                ),
                Gap(20),
                Icon(
                  CupertinoIcons.person,
                  color: Color(0xFF868686),
                ),
                Text(
                  '20',
                  style: TextStyle(color: Color(0xFF868686), fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
