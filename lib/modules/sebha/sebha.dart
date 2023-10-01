import 'package:flutter/material.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:provider/provider.dart';

import '../../theme/application_theme/application_theme.dart';

//17:11
class Sebha extends StatefulWidget {
   Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
   int counter1 = 0;

  double rotateAngle = 0;

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
    var theme =Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(top: mediaQuery.height * 0.09),
                  child: Transform.rotate(
                    angle: rotateAngle,
                      child: GestureDetector(
                        onTap: (){
                          rotateAngle += 10;
                          onCounterClick();
                          setState(() {

                          });
                        },
                          child: Image.asset("assets/images/body of seb7a.png"))) , height: mediaQuery.height * 0.20,),
              Container(
                  margin: EdgeInsets.only(left: mediaQuery.height * 0.05),
                  child: Image.asset("assets/images/head of seb7a.png" , height: mediaQuery.height*0.10,)),
            ],
          ),
          const SizedBox(height: 40,),
          Text("عدد التسبيحات" ,textAlign: TextAlign.center, style: theme.textTheme.bodyMedium, ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24 , horizontal: 5),
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color:theme.primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text("${counter1}" , style: TextStyle(color: ApplicationTheme.isDark? Colors.white :Colors.black , fontSize: 25) , textAlign: TextAlign.center),
          ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: appProvider.isDark()?Color(0xFFFACC1D): Color(0xFFB7935F),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Text( tasbehat[counter2], style: const TextStyle(fontSize: 25 , color: Colors.black) , textAlign: TextAlign.center),
            ),
        ],
      ),
    );
  }
   onCounterClick(){
     if(counter1 < 15){
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

   }
}
