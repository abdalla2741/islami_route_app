import 'package:flutter/material.dart';

class UnSelectedOption extends StatelessWidget {
   UnSelectedOption({super.key , required this.unSelectedTitle});
  String unSelectedTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(unSelectedTitle),
    );
  }
}
