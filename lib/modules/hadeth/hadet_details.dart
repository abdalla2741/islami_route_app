


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_route_app/modules/hadeth/hadeth.dart';

class HadethDetails extends StatefulWidget {
  HadethDetails({super.key});
  static const String routeName = "hadeth_details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allHadeth =[];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethInfo;
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
    body:Container(
    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 40),
    margin: const EdgeInsets.only(left: 30 , right: 30 , bottom: 120 , top: 25),
    width: mediaQuery.width,
    height: mediaQuery.height,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: const Color(0xFFF8F8F8).withOpacity(0.8),
    ),
      child: Column(
        children: [
          Text(arg.title , textAlign: TextAlign.center , style: theme.textTheme.bodyLarge,),
          Divider(
            color: theme.primaryColor,
            height: 10,
            thickness: 2.2,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(child: ListView.builder(
              itemBuilder: (context, index) => Text(arg.content, textAlign: TextAlign.center , style: theme.textTheme.bodySmall),
            itemCount: 1,

          ),
          ),
        ],
      ),
    ),
    ),
    );
  }


}
