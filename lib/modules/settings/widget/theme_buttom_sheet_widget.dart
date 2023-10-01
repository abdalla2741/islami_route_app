import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/settings/widget/selectedd_option_widget.dart';
import 'package:islami_route_app/modules/settings/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:islami_route_app/provider/app_provider.dart';

class ThemeButtomSheetWidget extends StatefulWidget {
  const ThemeButtomSheetWidget({super.key});

  @override
  State<ThemeButtomSheetWidget> createState() => _ThemeButtomSheetWidgetState();
}

class _ThemeButtomSheetWidgetState extends State<ThemeButtomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
   var appProvider = Provider.of<AppProvider>(context);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25 , horizontal: 20),
        decoration: BoxDecoration(
          color: theme.primaryColor.withOpacity(0.7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },child: appProvider.currentTheme == ThemeMode.dark
                ?SelectedOption(selectedTitle: locale.dark)
                :UnSelectedOption(unSelectedTitle: locale.dark) ),
            const SizedBox(height: 30,),
            GestureDetector(onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },child: appProvider.currentTheme == ThemeMode.dark
                ?UnSelectedOption(unSelectedTitle: locale.light)
                 : SelectedOption(selectedTitle: locale.light)),
          ],
        )
    );
  }
}
