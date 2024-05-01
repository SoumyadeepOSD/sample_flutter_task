import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSlider extends StatefulWidget {
  const FirstSlider({super.key});

  @override
  State<FirstSlider> createState() => _FirstSliderState();
}

class _FirstSliderState extends State<FirstSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "src/images/ai_expert_banner.png",
          height: 800,
          width: 500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
