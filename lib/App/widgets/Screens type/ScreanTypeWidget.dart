import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_kg/App/widgets/Screens%20type/forMobile/forMobileScreen.dart';
import 'package:website_kg/App/widgets/Screens%20type/forTablet/forTabletScreen.dart';
import 'package:website_kg/App/widgets/Screens%20type/forWeb/forWebScreen.dart';

class ScreanTypeWidget extends StatelessWidget {
  const ScreanTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Construct and pass in a widget builder per screen type
        ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ForMobileScreen(),
      tablet: (BuildContext context) => const ForTabletScreen(),
      desktop: (BuildContext context) => const ForWebScreen(),
    );
  }
}
