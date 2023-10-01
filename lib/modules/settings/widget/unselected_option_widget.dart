import 'package:flutter/material.dart';

class UnSelectedOption extends StatelessWidget {
   UnSelectedOption({super.key , required this.unSelectedTitle});
  String unSelectedTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
        color:Colors.white.withOpacity(0.05)
      ),
      child:  Text(unSelectedTitle),
    ) ;

  }
}

