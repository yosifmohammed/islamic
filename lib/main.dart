import 'package:Islamic/Fragments/hadeth/hadethContent.dart';
import 'package:Islamic/Fragments/hadeth/hadethFragment.dart';
import 'package:Islamic/Fragments/moshaf/quranContent.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.ROUTE_NAME : (context) => HomePage(),
        HadethContent.ROUTE_NAME : (context) => HadethContent(),
        suraContent.ROUTE_NAME : (context) => suraContent(),
      },
      initialRoute: HomePage.ROUTE_NAME,
    );
  }
}
