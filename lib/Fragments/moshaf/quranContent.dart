import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types, must_be_immutable
class suraContent extends StatefulWidget {
  // ignore: non_constant_identifier_names
  static final ROUTE_NAME = 'sura-content';

  @override
  _suraContentState createState() => _suraContentState();
}

// ignore: camel_case_types
class _suraContentState extends State<suraContent> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as SuraDetailsArgs;
    readFile('assets/quranContent/${args.suraPos}.txt');
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: AssetImage('assets/images/default_bg.png'))
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120, right: 20, left: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(200, 248, 248, 248),),
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(' سورة ${args.suraName}',
                            style: TextStyle(color: Colors.black, fontSize: 30,), textAlign: TextAlign.center ),
                          SizedBox(width: 12,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.play_circle_fill_outlined, size: 40,),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Container(
                        child: suraVerses.length == 0 ? CircularProgressIndicator()
                            :Expanded(
                              child: ListView.builder(
                          itemCount: suraVerses.length,
                              itemBuilder: (context, index){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(suraVerses[index], style: TextStyle(color: Colors.black, fontSize: 18,), textDirection: TextDirection.rtl,),
                                );
                              }),
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> suraVerses = [];

  void readFile(String fileName) async {
    var contentString = await rootBundle.loadString(fileName);
    List<String> verses = contentString.split('\n');
    setState(() {
      suraVerses = verses;
    });
  }
}
  class SuraDetailsArgs{
  String suraName;
  int suraPos;
  SuraDetailsArgs({this.suraPos,this.suraName});
  }
