import 'package:flutter/material.dart';
import 'package:onehub/constants/drawer_constants.dart';
import 'package:onehub/screens/first_screen.dart';
import 'package:onehub/screens/second_screen.dart';
import 'package:onehub/screens/slider_page.dart';
import 'package:onehub/screens/third_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    void toggleDrawer() async {
      if (scaffoldKey.currentState!.isDrawerOpen) {
        scaffoldKey.currentState!.openEndDrawer();
      } else {
        scaffoldKey.currentState!.openDrawer();
      }
    }

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.menu_open_rounded),
              onPressed: () {
                toggleDrawer();
              },
            ),
            title: const Row(
              children: [
                Image(
                  image: AssetImage("src/images/google_logo.png"),
                  height: 30,
                  width: 30,
                ),
                Text(
                  "OneHub",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    onTap: () {
                      drawerItems[index].title == 'Challanges'
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ThirdScreen(),
                              ),
                            )
                          : drawerItems[index].title == 'Home'
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FirstScreen(),
                                  ),
                                )
                              : null;
                    },
                    title: Text(
                      drawerItems[index].title,
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Icon(
                        drawerItems[index].icon,
                        size: 15,
                      ),
                    ),
                  ),
                );
              }),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              "Help",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SliderPage(),
                  ),
                );
              },
              title: const Text(
                "Pixel Support",
                style: TextStyle(fontSize: 15),
              ),
              leading: const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 15,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: ListTile(
              title: Text(
                "Help Center",
                style: TextStyle(fontSize: 15),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
