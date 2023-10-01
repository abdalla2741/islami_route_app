import 'package:flutter/material.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';

class SelectedOption extends StatelessWidget {
  SelectedOption({super.key , required this.selectedTitle});
  String selectedTitle;

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return  Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        color:Colors.white38,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(selectedTitle),
            Icon(Icons.check , color: ApplicationTheme.isDark?  theme.canvasColor : theme.canvasColor,),
          ]
      ),
    ) ;
  }
}
