import 'package:flutter/material.dart';

// ignore: camel_case_types
class radioFragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Expanded(
          flex: 5,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Image(
                  image: AssetImage('assets/images/ic_radio.png'),
                ),
              )),
        ),
        Expanded(
          flex: 3,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text('إذاعة القرآن الكريم',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(51, 255, 255, 255)),)
              )),
        ),
        Expanded(
          flex: 3,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Icon(Icons.skip_previous_rounded, size: 50,color: Colors.white,)),
                    Expanded(child: Icon(Icons.play_arrow_rounded, size: 80,color: Colors.white,)),
                    Expanded(child: Icon(Icons.skip_next_rounded, size: 50,color: Colors.white,)),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}