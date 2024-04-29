import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onehub/components/drawers.dart';
import 'package:onehub/constants/coupons_constants.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              toggleDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("src/images/google_logo.png"),
                width: 40,
                height: 40,
              ),
              Text(
                "Challanges",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        drawer: CustomDrawer(scaffoldKey: scaffoldKey),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("src/images/welcome_logo.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to Rewards!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Check out your earned rewards and redeem them!",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                "Your Coupons",
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: coupons.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey.shade300,
                      ),
                      gradient: coupons[index].title == "MACDONALDS"
                          ? LinearGradient(colors: [
                              Colors.red.shade100,
                              Colors.white,
                            ])
                          : null,
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Image(
                              height: 50,
                              width: 50,
                              image: AssetImage(coupons[index].image),
                            ),
                            const SizedBox(width: 10.0),
                            const Dash(
                              direction: Axis.vertical,
                              length: 80,
                              dashLength: 10,
                              dashColor: Colors.grey,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        coupons[index].title,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      Text(coupons[index].validity),
                                    ],
                                  ),
                                ),
                                Text(
                                  coupons[index].description,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Reedem code:${coupons[index].code}"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
