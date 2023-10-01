

import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/settings/widget/language_buttom_sheet_widget.dart';
import 'package:islami_route_app/modules/settings/widget/settings_item.dart';
import 'package:islami_route_app/modules/settings/widget/theme_buttom_sheet_widget.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingsItem(
              barTitleName: locale.language ,
              barOptionName: appProvider.currentLocale == "en"? "English" : locale.arabic  ,
              onOptionTap: () {
                showLanguageButtonSheeet(context);
              }
          ),
          const SizedBox(height: 40,),
          SettingsItem(
              barTitleName: locale.theme_mode,
              barOptionName: appProvider.currentTheme == ThemeMode.dark? locale.dark :locale.light,
            onOptionTap: (){
              showThemeButtonSheeet(context);
            }
          ),
          // Text('Theme mode',
          //     style: theme.textTheme.bodyLarge, textAlign: TextAlign.start),
          // GestureDetector(
          //   onTap: (){
          //     showThemeButtonSheeet(context);
          //   },
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(vertical: 16 , horizontal:30),
          //     padding: const EdgeInsets.symmetric(horizontal: 10),
          //     height: 50,
          //     width: mediaQuery.width,
          //     decoration: BoxDecoration(
          //       border:Border.all(
          //         color: theme.primaryColor,
          //         width: 1.2,
          //       ),
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //     child:  Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text("Light", style: theme.textTheme.bodyMedium),
          //         const Icon(Icons.arrow_drop_down , size: 30,)
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  void showLanguageButtonSheeet(context) {
    showModalBottomSheet(context: context, builder: (context) =>const LanguageButtomSheetWidget() ,);

  }

  void showThemeButtonSheeet(context) {
    showModalBottomSheet(context: context, builder: (context) =>const ThemeButtomSheetWidget(),);

  }
}
