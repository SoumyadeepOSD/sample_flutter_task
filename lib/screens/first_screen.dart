import 'package:flutter/material.dart';
import 'package:onehub/components/drawers.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      drawer: CustomDrawer(
        scaffoldKey: scaffoldKey,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Image(
                      image: AssetImage("src/images/google_logo.png"),
                    ),
                    Text(
                      "Himanshu Tiwari",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
