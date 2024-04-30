import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onehub/components/gradient_text.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    void toggleDrawer() async {
      if (scaffoldKey.currentState!.isDrawerOpen) {
        scaffoldKey.currentState!.openEndDrawer();
      } else {
        scaffoldKey.currentState!.openDrawer();
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            toggleDrawer();
          },
          icon: Icon(
            Icons.menu,
            size: 50,
            color: Colors.grey.shade700,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("src/images/google_logo.png"),
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 20.0),
            Text(
              "Challenges",
              style: GoogleFonts.notoSans(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 95,
              left: 90,
              child: Image.asset(
                "src/images/prism_icon.png",
                height: 25,
                width: 25,
              ),
            ),
            Positioned(
              top: 10,
              right: 180,
              child: Image.asset(
                "src/images/plus_icon.png",
                height: 30,
                width: 30,
              ),
            ),
            Positioned(
              top: 120,
              right: 80,
              child: Image.asset(
                "src/images/rectangle_icon.png",
                height: 25,
                width: 25,
              ),
            ),
            Positioned(
              top: 70,
              left: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                children: [
                  Text(
                    "Welcome to Challenges!",
                    style: GoogleFonts.notoSans(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Complete the Challanges and win exciting rewards",
                    style: GoogleFonts.notoSans(
                        fontSize: 20, color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 210,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Horizontal row
                  // Horizontal row 1
                  Container(
                    height: 150,
                    width: 330,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          "src/images/reward_logo.png",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "Rewards",
                          style: GoogleFonts.notoSans(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  // Horizontal row
                  // Horizontal row 2
                  Container(
                    height: 150,
                    width: 330,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "src/images/points_logo.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100 Points",
                              style: GoogleFonts.notoSans(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "earned so far...",
                              style: GoogleFonts.notoSans(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Leaderboard
            Positioned(
              top: 380,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber.shade50,
                      const Color(0xFFFFFCF3),
                      Colors.white,
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 50.0),
                height: 100,
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    const SizedBox(width: 10.0),
                    Image.asset(
                      "src/images/leaderboard_logo.png",
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(width: 20.0),
                    Text(
                      "Leaderboard",
                      style: GoogleFonts.notoSans(
                        fontSize: 25,
                        color: Colors.amber.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 350.0),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.amber.shade700,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            // Challanges
            Positioned(
              top: 560,
              left: 50,
              child: Text(
                "Challenges",
                style: GoogleFonts.notoSans(
                  fontSize: 33,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 620,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xF8F9FD),
                child: Column(
                  children: [
                    // Challenges 1
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Stack(
                        children: [
                          const Positioned(
                            right: 280,
                            child: Chip(
                              backgroundColor: Color(0xFF4285F4),
                              side: BorderSide(color: Colors.white),
                              label: Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 45.0,
                              ),
                              const Image(
                                height: 120,
                                width: 120,
                                image: AssetImage(
                                  "src/images/first_challange_logo.png",
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Pixel",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(width: 5.0),
                                      GradientText(
                                        'AI Challenges!',
                                        style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blue.shade600,
                                            Colors.purple.shade400,
                                            Colors.redAccent,
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Test how better you know  Google Pixel 8 Pro 5G.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Challenges 1

                    // Challenges 2
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Stack(
                        children: [
                          const Positioned(
                            right: 450,
                            child: Chip(
                              backgroundColor: Color(0xFF4285F4),
                              side: BorderSide(color: Colors.white),
                              label: Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 45.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Image(
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                    "src/images/second_challange_logo.png",
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        "Pixel Quiz",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 5.0),
                                    ],
                                  ),
                                  Text(
                                    "Test how better you know  Google Pixel 8 Pro 5G.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Challenges 2
                    // Challenges 3
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Stack(
                        children: [
                          const Positioned(
                            right: 370,
                            child: Chip(
                              backgroundColor: Color(0xFF4285F4),
                              side: BorderSide(color: Colors.white),
                              label: Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 45.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Image(
                                  height: 80,
                                  width: 80,
                                  image: AssetImage(
                                    "src/images/third_challange_logo.png",
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        "Circle to Search",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 5.0),
                                    ],
                                  ),
                                  Text(
                                    "Search anything with just highlighting or scribble",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Challenges 3
                    // Challenges 4
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Stack(
                        children: [
                          const Positioned(
                            right: 370,
                            child: Chip(
                              backgroundColor: Color(0xFF4285F4),
                              side: BorderSide(color: Colors.white),
                              label: Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 45.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Image(
                                  height: 80,
                                  width: 80,
                                  image: AssetImage(
                                    "src/images/fourth_challange_logo.png",
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        "Circle to Search",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 5.0),
                                    ],
                                  ),
                                  Text(
                                    "Search anything with just highlighting or scribble",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Challenges 4
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
