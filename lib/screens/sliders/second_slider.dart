import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSlider extends StatefulWidget {
  const SecondSlider({super.key});

  @override
  State<SecondSlider> createState() => _SecondSliderState();
}

class _SecondSliderState extends State<SecondSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: MediaQuery.of(context).size.height * 0.80,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "src/images/ai_talk_banner.png",
          height: 900,
          width: 500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
