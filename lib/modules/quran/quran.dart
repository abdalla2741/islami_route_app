import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/quran/quran_details.dart';
import 'package:islami_route_app/modules/quran/quran_item.dart';


class Quran extends StatelessWidget {
   Quran({super.key});
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم","طه",
    "الأنبياء",
    "الحج",
    "المؤمنون"
    ,"النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف"
    ,"محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة"
    ,"الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار"
    ,"المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran logo.png"),
        Divider(
          thickness: 2.2,
          color: theme.primaryColor,
          height: 5,
        ),
        Row(
          children: [
            Expanded(child: Text("رقم السورة" , textAlign: TextAlign.center,style: theme.textTheme.bodyLarge,)),
            Container(
              width: 2.2,
              height: 45,
              color: theme.primaryColor,
            ),
            Expanded(child: Text("اسم السورة" , textAlign: TextAlign.center,style: theme.textTheme.bodyLarge,)),

          ],
        ),
        Divider(
          thickness: 2.2,
          color: theme.primaryColor,
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: Elsora,
          itemCount: suraNames.length,

          ),
        ),
      ],
    );
  }
  Widget Elsora (BuildContext context , int index){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, QuranDetails.routeName , arguments:QuranInfo(suraName: suraNames[index], suraNumber: "${index + 1}" ));
      },
        child: QuranItem(name: suraNames[index], number: "${index+1}")) ;
  }
}

class QuranInfo {
  String suraName;
  String suraNumber;
  QuranInfo({required this.suraName ,  required this.suraNumber});
}
