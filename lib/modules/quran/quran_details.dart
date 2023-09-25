import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_route_app/modules/quran/quran.dart';
//sa3a w 9 d2ay2
class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});
  static const String routeName = "quran_details";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as QuranInfo;
    if(content.isEmpty) {
      readFiles(arg.suraNumber);
    }
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
          body: content.isEmpty? const Center(
            child: CircularProgressIndicator()
          ) :Container(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سورة ${arg.suraName}" , style: theme.textTheme.bodyLarge) ,
                    const Icon(Icons.play_circle, size: 32 , color: Colors.black,)
                  ],
                ),
                Divider(
                  thickness: 2.2,
                  color: theme.primaryColor,
                  height: 10,
                  endIndent: 25,
                  indent: 25,
                ),
               Expanded(
                 child: ListView.builder(itemBuilder: (context , index) =>
                     Text("${content}",
                       style: theme.textTheme.bodySmall,
                       textAlign: TextAlign.center,
                     ),
                   itemCount: 1,
                 ),
               ),
              ],
            ),
          ),
        ),
    );
  }

  readFiles(String index) async {
   String text = await rootBundle.loadString("assets/files/${index}.txt");
   content = text;
   allVerses = content.split("\n");
   for(int i = 0 ; i<content.length ; i++){

   }

       setState(() {
       });
  }
}
