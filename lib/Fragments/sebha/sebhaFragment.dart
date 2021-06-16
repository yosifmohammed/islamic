import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class sebhaFragment extends StatefulWidget {

  @override
  _sebhaFragmentState createState() => _sebhaFragmentState();
}

// ignore: camel_case_types
class _sebhaFragmentState extends State<sebhaFragment> {
  String value = 'اختر للبدء';
  int sebhaCount = 0;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage('assets/images/ic_sebha.png'),
                ),
              )),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 204, 204, 204),
              borderRadius: BorderRadius.circular(19)
            ),
            child: DropdownButton(
              underline: Container(
                height: 0,
                width: 0,
              ),
              hint: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text('$value', style: TextStyle(
                      color: Color.fromARGB(255, 2, 18, 56),
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              iconEnabledColor: Color.fromARGB(255, 2, 18, 56),
              items: <String>['سبحان الله','استغفر الله', 'الحمد لله', 'الله اكبر'].map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value, style: TextStyle(
                    fontSize: 40, color: Colors.black),),);
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Text('$sebhaCount', style:
          TextStyle(
              color: Colors.white,
              fontSize: 60
          ),),),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    sum += sebhaCount;
                    sebhaCount = 0;
                    if(sum > 966){
                      sum = 0;
                    }
                  });
                },
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/images/loading.png'),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Color.fromARGB(180, 204, 204, 204),
                      child: Center(
                          child: Text('$sum', style:
                          TextStyle(
                            color: Color.fromARGB(255, 2, 18, 56),
                            fontSize: 26,
                          ),)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                child: Center(child: Text('Click Here', style: TextStyle(color: Color.fromARGB(255, 2, 30, 56), fontSize: 50),)),
                margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent
                ),
                width: double.infinity,
                height: double.infinity,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(sebhaCount < 33){
                      sebhaCount++;
                    }else{
                      sebhaCount = 33;
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(45, 160, 160, 160)
                  ),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ],
          ),
          ),
      ],
    );
  }
}