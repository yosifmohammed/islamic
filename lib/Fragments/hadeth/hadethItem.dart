import 'package:Islamic/Fragments/hadeth/hadethFragment.dart';
import 'package:Islamic/Fragments/hadeth/hadethContent.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HadethItem extends StatelessWidget {

  Hadeth hadeth;
  HadethItem(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(HadethContent.ROUTE_NAME,
                arguments: hadeth);
          },
      child: Container(
          child: Text('${hadeth.title}', style: TextStyle(fontSize: 22, color: Colors.white),
            textAlign: TextAlign.center,),
        ),
    );
  }
}