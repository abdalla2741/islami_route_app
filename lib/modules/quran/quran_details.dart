import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_route_app/modules/quran/quran.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
//sa3a w 9 d2ay2
class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});
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
    var appProvider = Provider.of<AppProvider>(context);
    if(content.isEmpty) {
      readFiles(arg.suraNumber);
    }
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
        width:mediaQuery.width,
        height: mediaQuery.height,
        decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(appProvider.backgroundImagePath()) , fit: BoxFit.fill)
        ),
        child: Scaffold(
        appBar:AppBar(
        title:  Text(AppLocalizations.of(context)!.islami),
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
              color: appProvider.isDark()? Color(0xFF141A2E) : Color(0xFFFFFFFF) ,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سورة ${arg.suraName}" , style: theme.textTheme.bodyLarge!.copyWith(color:theme.colorScheme.onPrimary)) ,
                    Icon(Icons.play_circle, size: 32 ,color: theme.colorScheme.onPrimary)
                  ],
                ),
                Divider(
                  thickness: 2.2,
                  color: theme.dividerColor,
                  height: 10,
                  endIndent: 25,
                  indent: 25,
                ),
               Expanded(
                 child: ListView.builder(itemBuilder: (context , index) =>
                     Text("${allVerses[index]} (${index+1})",
                       style: theme.textTheme.bodySmall,
                       textAlign: TextAlign.center,
                     ),
                   itemCount: allVerses.length,
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
