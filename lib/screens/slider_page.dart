import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onehub/screens/sliders/first_slider.dart';
import 'package:onehub/screens/sliders/second_slider.dart';
import 'package:onehub/screens/sliders/third_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int activeIndex = 0;
  final sliderPageList = [
    const FirstSlider(),
    const SecondSlider(),
    const ThirdSlider(),
  ];
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.blue),
              ),
              child: const Row(
                children: [
                  Image(
                    height: 20,
                    width: 20,
                    image: AssetImage(
                      "src/images/check_circle.png",
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "Complete",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              toggleDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 40,
              color: Colors.grey.shade700,
            ),
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 40.0),
              const Image(
                image: AssetImage("src/images/google_logo.png"),
                width: 50,
                height: 50,
              ),
              Text(
                "TSM",
                style: GoogleFonts.notoSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: 900,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 900,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ],
                  ),
                  child: CarouselSlider.builder(
                    itemCount: sliderPageList.length,
                    options: CarouselOptions(
                      height: 900,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final sliderPage = sliderPageList[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                        ),
                        color: Colors.red.shade300,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: sliderPage,
                      );
                    },
                  ),
                  // buildIndicator(),
                ),
              ),
              Positioned(
                bottom: 230,
                right: MediaQuery.of(context).size.width * 0.46,
                child: buildIndicator(),
              ),
              // Bottom section buttons

              Positioned(
                bottom: 80,
                left: 130,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Image.asset(
                        "src/images/left_bottom_logo.png",
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        height: 2,
                        width: 120, // Width of the separator
                        color: Colors.grey.shade300, // Color of the separator
                      ),
                      Image.asset(
                        "src/images/voice_ai_logo.png",
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        height: 2,
                        width: 120, // Width of the separator
                        color: Colors.grey.shade300, // Color of the separator
                      ),
                      Image.asset(
                        "src/images/right_bottom_logo.png",
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: sliderPageList.length,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.grey.shade700,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
