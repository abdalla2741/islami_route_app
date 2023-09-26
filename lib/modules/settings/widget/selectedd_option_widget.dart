import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.circular(8),
        color:Colors.white24,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(selectedTitle),
            Icon(Icons.check),
          ]
      ),
    ) ;
  }
}
