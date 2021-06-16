import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadethItem.dart';

// ignore: camel_case_types
class hadethFragment extends StatefulWidget {

  @override
  _hadethFragmentState createState() => _hadethFragmentState();
}

// ignore: camel_case_types
class _hadethFragmentState extends State<hadethFragment> {
  @override
  Widget build(BuildContext context) {

    loadHadethFile();

    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Expanded(
          flex: 1,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage('assets/images/ic_hadeth.png'),
                ),
              )),
        ),
        
        Expanded(
            flex: 2,
            child: Container(
              child: hadethList.length == 0?
                  Center(child: CircularProgressIndicator(),)
                  :ListView.separated(
                  itemBuilder: (context, index){
                    return HadethItem(Hadeth(content: hadethList[index].content, title: hadethList[index].title));
                  },
                  separatorBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      color: Colors.white,
                      height: 1,
                    );
                  },
                  itemCount: hadethList.length),
            ),
        ),
      ],
    );
  }

  List<Hadeth> hadethList = [];

  void loadHadethFile() async {
    List<Hadeth> hadethList = [];
    String ahadethContent = await rootBundle.loadString('assets/quranContent/ahadeth.txt');
    List<String> ahadeth = ahadethContent.split('#\r\n');
    for(int i = 0; i < ahadeth.length; i++){
      String singleHadeth = ahadeth[i];

      LineSplitter splitter = LineSplitter();
      List<String> hadethLines = splitter.convert(singleHadeth);
      String title = hadethLines[0];
      String content = '';
      for(int j = 1; j < hadethLines.length; j++){
        content += " " + hadethLines[j];
      }
      var hadethItem = Hadeth(title: title, content: content);
      hadethList.add(hadethItem);
    }
    setState(() {
      this.hadethList = hadethList;
    });
  }
}
class Hadeth {
  String title;
  String content;
  Hadeth({this.content, this.title});
}