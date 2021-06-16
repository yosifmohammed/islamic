import 'package:Islamic/Fragments/moshaf/quranContent.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class suraItem extends StatelessWidget {
  String suraName = '';
  String suraType = '';
  int suraCount = 0;
  int suraPos = 0;

  suraItem({
    this.suraName,
    this.suraCount,
    this.suraType,
    this.suraPos,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(suraContent.ROUTE_NAME, arguments: SuraDetailsArgs(suraName: suraName, suraPos: suraPos));
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(120.0),
            children: [
              TableRow(children: [
                Column(children: [
                  Text('$suraCount', style: TextStyle(fontSize: 20.0, color: Colors.white))
                ]),
                Column(children: [
                  Text(suraType, style: TextStyle(fontSize: 20.0, color: Colors.white))
                ]),
                Column(
                    children: [
                  Text(suraName, style: TextStyle(fontSize: 20.0, color: Colors.white))
                    ]),
              ]),
            ],
          )),
    );
  }
}
