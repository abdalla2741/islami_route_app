import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  const QuranDetails({super.key});
  static const String routeName = "quran_details";
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 40),
            margin: EdgeInsets.only(left: 30 , right: 30 , bottom: 120 , top: 25),
            width: mediaQuery.width,
            height: mediaQuery.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFF8F8F8).withOpacity(0.8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sura name" , style: theme.textTheme.bodyLarge) ,
                    Icon(Icons.play_circle, size: 32 , color: Colors.black,)
                  ],
                ),
                Divider(
                  thickness: 2.2,
                  color: theme.primaryColor,
                  height: 10,
                  endIndent: 25,
                  indent: 25,
                )
              ],
            ),
          ),
        ),
    );
  }
}
