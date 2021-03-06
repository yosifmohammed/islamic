import 'package:Islamic/Fragments/moshaf/SuraItem.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class moshafFragment extends StatelessWidget {
  List<int> count = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
  List<String> types = [
    "مكيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مدنيه",
    "مكيه",
    "مكيه",
    "مكيه",
    "مكيه"
  ];
  List<String> names = [
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
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
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
    "الأحقاف",
    "محمد",
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
    "المجادلة",
    "الحشر",
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
    "الإنفطار",
    "المطفّفين",
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
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 1,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 40,),
                child: Image(
              image: AssetImage('assets/images/ic_moshaf.png'),
            ),
          )),
        ),
        Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 20,),
                    child: Table(
                      defaultColumnWidth: FixedColumnWidth(120.0),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('عدد الايات', style: TextStyle(fontSize: 20.0, color: Colors.white))
                          ]),
                          Column(children: [
                            Text('نوع السوره', style: TextStyle(fontSize: 20.0, color: Colors.white))
                          ]),
                          Column(
                              children: [
                                Text('اسم السوره', style: TextStyle(fontSize: 20.0, color: Colors.white))
                              ]),
                        ]),
                      ],
                    )),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        height: 1,
                      );
                    },
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return suraItem(
                        suraName: names[index],
                        suraType: types[index],
                        suraCount: count[index],
                        suraPos: index+1,
                      );
                    },
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
