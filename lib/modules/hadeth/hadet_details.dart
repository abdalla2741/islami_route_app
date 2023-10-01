


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_route_app/modules/hadeth/hadeth.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';
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
    var appProvider = Provider.of<AppProvider>(context);
    var arg = ModalRoute.of(context)?.settings.arguments as HadethInfo;
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
    body:Container(
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
          Text(arg.title , textAlign: TextAlign.center , style: theme.textTheme.bodyLarge!.copyWith(color:theme.colorScheme.onPrimary ),),
          Divider(
            color: theme.dividerColor,
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
