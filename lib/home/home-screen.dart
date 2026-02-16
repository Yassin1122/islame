import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islame/core/app-color.dart';
import 'package:islame/tabs/hadith_tab.dart';
import 'package:islame/tabs/quran_tab.dart';
import 'package:islame/tabs/radio_tab.dart';
import 'package:islame/tabs/sebha.dart';
import 'package:islame/tabs/timer_tab.dart';

import '../core/app-assets.dart';

class HomeScreen extends StatefulWidget {
static const String  routeName='HomeScreen';
int selectedIndex=0;
bool isSelected=false;
List<String>Screen_bg=[
  AppAssets.quran_bg,
  AppAssets.hadith_bg,

  AppAssets.sebha_bg,
AppAssets.radio_bg,
  AppAssets.timer_bg
];
List<Widget>tabs=[
    QuranScreen(),
  HadithScreen()
  ,SebhaScreen(),
  RadioScreen(),
  TimerScreen()

];



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
    return

    Stack(
      children: [
        Image.asset(widget.Screen_bg[widget.selectedIndex],
        fit: BoxFit.cover,
        width: screenWidth,
          height: screenHeight,

        ),Scaffold(
        //  backgroundColor: Colors.transparent,
bottomNavigationBar: Theme(
  data: Theme.of(context).copyWith(
    canvasColor:AppColor.gold
  ),
  child: BottomNavigationBar(
    currentIndex: widget.selectedIndex,

      onTap: (index){
        setState(() {
          widget.selectedIndex=index;
          widget.isSelected=true;
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.gold,
  
  
  
    items:
      [
        BottomNavigationBarItem(
         icon:    buildItemInNavigationBar(index: 0,ImageName: AppAssets.quran_icon)
             ,label:"Quran",
        )
          ,BottomNavigationBarItem(icon:buildItemInNavigationBar(index:
        1,ImageName:AppAssets.hadith_icon),
      label: 'Hadith',
  
      ),BottomNavigationBarItem(icon:buildItemInNavigationBar(index:
      2,ImageName:AppAssets.sepaha_icon),
        label: 'sebha',

      ),BottomNavigationBarItem(icon:buildItemInNavigationBar(index:
      3,ImageName:AppAssets.radio_icon),
        label: 'Radio',

      ),BottomNavigationBarItem(icon:buildItemInNavigationBar(index:
      4,ImageName:AppAssets.time_icon),
        label: 'Timer',

      )

      ]
  ),
)
    ,body:widget.tabs[widget.selectedIndex],
        )
       ]



    );





  }
  Widget buildItemInNavigationBar({required int index,required String ImageName}){
    return widget.selectedIndex==index ? Container(
      padding:EdgeInsets.symmetric(horizontal:20,vertical:6),decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(66),
        border:Border(),
        color:AppColor.grey
    ),
      child: Image.asset("$ImageName",
      ),

    ):Image.asset("$ImageName");
  }
}
