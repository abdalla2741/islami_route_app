import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/sebha/sebha_counter.dart';


class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return  Center(
      child: Column(
        children: [
          Image.asset("assets/images/sebha logo.png"),
          const SizedBox(height: 40,),
          Text("عدد التسبيحات" , style: theme.textTheme.bodyMedium,),
          const SizedBox(height: 30,),
          SebhaCounter(),
        ],
      ),
    );
  }
}
