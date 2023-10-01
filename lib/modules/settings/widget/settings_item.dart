import 'package:flutter/material.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'package:provider/provider.dart';

typedef SettingsOptionClicked = void Function ();

class SettingsItem extends StatelessWidget {
   SettingsItem({super.key , required this.barTitleName , required this.barOptionName , required this.onOptionTap});
   String barTitleName;
   String barOptionName;
   SettingsOptionClicked onOptionTap;


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(barTitleName,
            style: theme.textTheme.bodyLarge, textAlign: TextAlign.start),
        GestureDetector(
          onTap: onOptionTap,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16 , horizontal:30),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              border:Border.all(
                color: appProvider.isDark()? Color(0xFFFACC1D) : Color(0xFFB7935F),
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(barOptionName, style: theme.textTheme.bodyMedium),
                 Icon(Icons.arrow_drop_down , size: 30, color:appProvider.isDark()? Color(0xFFFACC1D) : Color(0xFFB7935F), )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
