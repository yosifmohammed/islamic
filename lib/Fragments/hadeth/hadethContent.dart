import 'package:flutter/material.dart';
import 'hadethFragment.dart';

class HadethContent extends StatefulWidget {
  // ignore: non_constant_identifier_names
  static final ROUTE_NAME = 'hadeth-content';

  @override
  _HadethContentState createState() => _HadethContentState();
}

class _HadethContentState extends State<HadethContent> {
  @override
  Widget build(BuildContext context) {
    var hadethItem = ModalRoute.of(context).settings.arguments as Hadeth;
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
                        Text(hadethItem.title,
                            style: TextStyle(color: Colors.black, fontSize: 30,), textAlign: TextAlign.center ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                hadethItem.content,
                                style: TextStyle(fontSize: 22),
                                textAlign: TextAlign.center, textDirection: TextDirection.rtl,),
                            ),
                          ),
                        ),
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
}
