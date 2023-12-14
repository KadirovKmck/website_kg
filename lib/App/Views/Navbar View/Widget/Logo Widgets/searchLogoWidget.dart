import 'package:flutter/material.dart';

class SerchLogoWidget extends StatefulWidget {
  const SerchLogoWidget({super.key});

  @override
  State<SerchLogoWidget> createState() => _SerchLogoWidgetState();
}

class _SerchLogoWidgetState extends State<SerchLogoWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Container(
      height: 42,
      width: 289,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(41.09),
        ),
        shadows: [
          BoxShadow(
              color: Color(0x77FFFFFF), blurRadius: 40, offset: Offset(0, 3.29))
        ],
      ),
      child: TextFormField(
        controller: controller,
        onChanged: (query) {
          setState(() {});
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: 'Seach...',
          hintStyle: const TextStyle(
              color: Color(0xFFD0D0D0),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500),
          fillColor: const Color(0xff6C54E3),
          filled: true,
          suffixIcon: controller.text.isEmpty
              ? const Icon(
                  Icons.search,
                  color: Color(0xFFD0D0D0),
                )
              : IconButton(
                  onPressed: () {
                    controller.clear();
                    FocusScope.of(context).unfocus();
                  },
                  icon: const Icon(Icons.close),
                  color: const Color(0xFFD0D0D0),
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
