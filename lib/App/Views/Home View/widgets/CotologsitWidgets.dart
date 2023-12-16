
import 'package:flutter/material.dart';
import 'package:website_kg/App/Views/Home%20View/widgets/ItkursTextWidget.dart';

class CotologsItWidgets extends StatelessWidget {
  const CotologsItWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ItkursTextWidget(
                text: 'It курстары', images: 'assets/images/Star.png'),
            ItkursTextWidget(
                text: 'Тил курстары', images: 'assets/images/Star.png'),
            ItkursTextWidget(text: 'SMM', images: 'assets/images/Star.png'),
            ItkursTextWidget(
                text: 'ЖРТга даярдоо', images: 'assets/images/Star.png'),
            ItkursTextWidget(
                text: 'Математика', images: 'assets/images/Star.png'),
            ItkursTextWidget(
                text: 'Тез окуу', images: 'assets/images/Star.png'),
          ],
        ));
  }
}
