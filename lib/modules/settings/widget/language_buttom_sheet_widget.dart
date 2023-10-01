import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/settings/widget/selectedd_option_widget.dart';
import 'package:islami_route_app/modules/settings/widget/unselected_option_widget.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageButtomSheetWidget extends StatelessWidget {
  const LanguageButtomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25 , horizontal: 20),
      decoration: const BoxDecoration(
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         GestureDetector(
             onTap: (){
               appProvider.changeLanguage("en");
               Navigator.pop(context);
             },
             child: appProvider.currentLocale == "en"
                 ?SelectedOption(selectedTitle: 'English')
                 : UnSelectedOption(unSelectedTitle: "English")),
          const SizedBox(height: 30,),
          GestureDetector(
              onTap: (){
                appProvider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: appProvider.currentLocale == "en"
                  ?UnSelectedOption(unSelectedTitle:AppLocalizations.of(context)!.arabic )
                  :SelectedOption(selectedTitle: AppLocalizations.of(context)!.arabic ),
          )
        ],
      )
    );
  }
}
