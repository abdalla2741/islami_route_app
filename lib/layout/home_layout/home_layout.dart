import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/hadeth/hadeth.dart';
import 'package:islami_route_app/modules/quran/quran.dart';
import 'package:islami_route_app/modules/radio/radio.dart';
import 'package:islami_route_app/modules/sebha/sebha.dart';
import 'package:islami_route_app/modules/settings/settings.dart';
//01:21:00

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});
  static const String routeName = "home_layout";


  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Quran(),
    Sebha(),
    Hadeth(),
    Radioo(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width:mediaQuery.width,
      height: mediaQuery.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/background.png") , fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar:AppBar(
          title: const Text("إسلامي"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            selectedIndex = index;
            setState(() {

            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")) , label: "Quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")) , label: "Sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")) , label: "Hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")) , label: "Radio"),
            BottomNavigationBarItem(icon:Icon(Icons.settings) , label:"Settings"),
          ],
        ),
      ),
    );
  }
}
