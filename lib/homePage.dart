import 'package:Islamic/Fragments/hadeth/hadethFragment.dart';
import 'package:Islamic/Fragments/moshaf/moshafFragment.dart';
import 'package:Islamic/Fragments/radio/radioFragment.dart';
import 'package:Islamic/Fragments/sebha/sebhaFragment.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  static final ROUTE_NAME = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage('assets/images/default_bg.png'),),),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 2, 12, 37),
            selectedLabelStyle: TextStyle(
              color:Colors.white,
              fontSize: 12
            ),
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            unselectedItemColor: Color.fromARGB(150, 160, 160, 160),
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  label: 'radio',
                  icon: ImageIcon(AssetImage('assets/images/radio.png'),)),
              BottomNavigationBarItem(
                  label: 'sebha',
                  icon: ImageIcon(AssetImage('assets/images/sebha.png'),)),
              BottomNavigationBarItem(
                  label: 'hadeth',
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png'),)),
              BottomNavigationBarItem(
                  label: 'moshaf',
                  icon: ImageIcon(AssetImage('assets/images/moshaf.png'),)),
            ],
            onTap: onBottomNavigationItemSelected,
          ),
          body: getMainView(),
        ),
      ),
    );
  }

  // ignore: missing_return
  Widget getMainView(){
    if(selectedIndex == 0){
      return radioFragment();
    }else if(selectedIndex == 1){
      return sebhaFragment();
    }else if(selectedIndex == 2){
      return hadethFragment();
    }else if(selectedIndex == 3){
      return moshafFragment();
    }
  }

  void onBottomNavigationItemSelected(int pos){
    setState(() {
      selectedIndex= pos;
    });
  }
}
