import 'package:flutter/material.dart';

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
                color: theme.primaryColor,
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(barOptionName, style: theme.textTheme.bodyMedium),
                const Icon(Icons.arrow_drop_down , size: 30,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
