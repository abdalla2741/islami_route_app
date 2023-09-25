import 'package:flutter/material.dart';

class SebhaCounter extends StatefulWidget {
   const SebhaCounter({super.key});

  @override
  State<SebhaCounter> createState() => _SebhaCounterState();
}

class _SebhaCounterState extends State<SebhaCounter> {
  int counter1 = 0;
  int counter2 = 0;
  List<String> tasbehat = [
    "سبحان الله",
    "استغفر الله",
    "الله اكبر",
    "الحمدلله",
    "لا اله الا الله",
  ];


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            onCounterClick();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 24 , horizontal: 5),
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color:theme.primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text("${counter1}" , style: const TextStyle(color: Colors.black , fontSize: 25) , textAlign: TextAlign.center),
          ),
        ),
        const SizedBox(height: 30,),
    Container(
    padding: const EdgeInsets.symmetric(vertical: 6),
    width: 137,
    height: 51,
    decoration: BoxDecoration(
    color: theme.primaryColor,
    borderRadius: BorderRadius.circular(25)
    ),
    child: Text( tasbehat[counter2], style: const TextStyle(fontSize: 25 , color: Colors.black) , textAlign: TextAlign.center),
    ),
      ],
    );
  }
  onCounterClick(){
    if(counter1 < 10){
      counter1++;
    }
    else{
      counter1 = 0;
      if(counter2 < 4){
        counter2++;
      }
      else{
        counter2 = 0;
      }
    }
    setState(() {

    });
  }

}
