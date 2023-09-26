import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/radio logo.png"),
        Text(
          "إذاعة القرآن الكريم" ,
          textAlign: TextAlign.center,
          style:theme.textTheme.bodyMedium 
          ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous , color: theme.primaryColor,size: 50,),
            const SizedBox(width: 20,),
            Icon(Icons.play_arrow , color: theme.primaryColor,size: 50),
            const SizedBox(width: 20,),
            Icon(Icons.skip_next , color: theme.primaryColor,size: 50,)
          ],
        )
      ],
    );
  }
}
