import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/Views/PopularKurs/Widget/PopularKursConteinerWidget.dart';
import 'package:website_kg/App/widgets/extension/hover_extensions.dart';

class PopularKurs extends StatefulWidget {
  const PopularKurs({Key? key}) : super(key: key);

  @override
  State<PopularKurs> createState() => _PopularKursState();
}

class _PopularKursState extends State<PopularKurs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 960),
          child: Text(
            'Популярдуу курстар',
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Gap(45),
        const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML3.png',
                  title: 'HTML5 жана   CSS3 негиздери',
                ),
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML1.png',
                  title: 'Python жаңы үйрөнүүчүлөр үчүн',
                ),
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML2.png',
                  title: 'Программалоонун негиздери',
                ),
              ],
            ),
            Gap(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML3.png',
                  title: 'Графикалык дизайн',
                ),
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML4.png',
                  title: 'Веб дизайн Ux/Ui                 ',
                ),
                PopularKursConteinerWidget(
                  assetName: 'assets/images/HTML.png',
                  title: 'HTML5 жана   CSS3 негиздери',
                ),
              ],
            ),
          ],
        ),
        Gap(25),
        InkWell(
          onTap: () {},
          child: Container(
            width: 289,
            height: 75,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF4223DA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(41.09),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x59444444),
                  blurRadius: 3.29,
                  offset: Offset(0, 3.29),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Башка курстарды көрүү',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ).showCursorOnHover.moveUpOnHOver,
        ),
      ],
    );
  }
}
