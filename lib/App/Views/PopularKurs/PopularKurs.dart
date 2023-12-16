import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website_kg/App/Views/PopularKurs/Widget/PopularKursConteinerWidget.dart';
import 'package:website_kg/App/widgets/Conteiner%20Buttom%20Widget/ButtomConteinerWidget.dart';

class PopularKurs extends StatefulWidget {
  const PopularKurs({Key? key}) : super(key: key);

  @override
  State<PopularKurs> createState() => _PopularKursState();
}

class _PopularKursState extends State<PopularKurs> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
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
        Column(
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
        Gap(45),
        ButtomConteinerWidget(
          title: 'Башка курстарды көрүү',
          colors: Color(0xff4224DB),
          height: 75,
          width: 288,
          shadowsColors: Colors.black,
        ),
      ],
    );
  }
}
