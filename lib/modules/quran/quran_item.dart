import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  QuranItem({super.key , required this.name , required this.number});
  String name;
  String number;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Row(
      children: [
        Expanded(child: Text(number , textAlign: TextAlign.center,style: theme.textTheme.bodyMedium,)),
        Container(
          width: 2.2,
          height: 45,
          color: theme.primaryColor,
        ),
        Expanded(child: Text(name , textAlign: TextAlign.center,style: theme.textTheme.bodyMedium,)),

      ],
    );
  }
}
