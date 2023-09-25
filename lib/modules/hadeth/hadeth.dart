import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_route_app/modules/hadeth/hadet_details.dart';

class Hadeth extends StatefulWidget {
  Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<HadethInfo> allHadethContentList = [];

  @override
  Widget build(BuildContext context) {
    if(allHadethContentList.isEmpty) readFile();
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/hadeth logo.png"),
        Divider(
          color: theme.primaryColor,
          height: 5,
          thickness: 2.2,

        ),
        Text("الأحاديث" , textAlign: TextAlign.center , style: theme.textTheme.bodyMedium,),
        Divider(
          color: theme.primaryColor,
          height: 10,
          thickness: 2.2,

        ),
        Expanded(child: ListView.separated(itemBuilder: (context, index) => TextButton(
            onPressed: (){
              Navigator.pushNamed(context, HadethDetails.routeName , arguments: HadethInfo(title:allHadethContentList[index].title , content: allHadethContentList[index].content));
            }, child: Text(allHadethContentList[index].title , style: theme.textTheme.bodyLarge, textAlign: TextAlign.center,)),
          itemCount: allHadethContentList.length,
          separatorBuilder: (context, index) =>  Divider(
            color: theme.primaryColor,
            height: 5,
            thickness: 2.2,
          )
        ),
        ),
      ],
    );
  }

  readFile() async {
    String text =  await rootBundle.loadString("assets/hadeth/ahadeth.txt");
    List<String> allHadeth = text.split("#");
    for(int i = 0 ; i<allHadeth.length ; i++){
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title =  singleHadeth.substring(0 , indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethInfo hadethInfo = HadethInfo(title: title, content: content);
      allHadethContentList.add(hadethInfo);
      setState(() {

      });
    }

  }
}


class HadethInfo {
 String title;
 String content;
 HadethInfo({required this.title , required this.content});
}
