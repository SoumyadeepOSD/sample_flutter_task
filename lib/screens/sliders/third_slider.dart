import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdSlider extends StatefulWidget {
  const ThirdSlider({super.key});

  @override
  State<ThirdSlider> createState() => _ThirdSliderState();
}

class _ThirdSliderState extends State<ThirdSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "src/images/ai_review_banner.png",
          height: 900,
          width: 500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
