import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          AppLocalizations.of(context)!.quran_radio ,
          textAlign: TextAlign.center,
          style:theme.textTheme.bodyMedium 
          ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous , color: theme.dividerColor,size: 50,),
            const SizedBox(width: 20,),
            Icon(Icons.play_arrow , color: theme.dividerColor,size: 50),
            const SizedBox(width: 20,),
            Icon(Icons.skip_next , color: theme.dividerColor,size: 50,)
          ],
        )
      ],
    );
  }
}
