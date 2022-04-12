import 'package:untitled1/bottomNavScreens/navHome.dart';
import 'package:untitled1/bottomNavScreens/navMenu.dart';
import 'package:untitled1/bottomNavScreens/navNotifications.dart';
import 'package:untitled1/bottomNavScreens/navTeams.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
class mainState extends State
{
  GlobalKey<ScaffoldState> key = new GlobalKey();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context)
  {
    const cardColor = Color(0xff2B55B7);
    const selectedIconTheme = IconThemeData(color: cardColor);
    const unselectedIconTheme = IconThemeData(color:Colors.grey);
    final pageArray = [navHome(),navTeams(),navNotifications(),navMenu()];
    var homeIcon = SvgPicture.asset("assets/home.svg");
    var teamsIcon = SvgPicture.asset("assets/teams.svg");
    var notiIcon = SvgPicture.asset("assets/notification.svg");
    var menuIcon = SvgPicture.asset("assets/menu.svg");
    return Scaffold(
      key:key,
      backgroundColor: const Color(0xffE5E5E5),
      body:pageArray[pageIndex],
      endDrawer: Drawer(backgroundColor: Colors.white,
      child: Column(children: [
        Container(),
        ListView.builder(itemBuilder: (BuildContext context, int index) {
          return drawerListChild();
        },)
      ],)),
      bottomNavigationBar: BottomNavigationBar(currentIndex: pageIndex,backgroundColor: Colors.white,selectedIconTheme: selectedIconTheme,unselectedIconTheme: unselectedIconTheme,selectedItemColor: cardColor,unselectedItemColor: Colors.grey,showSelectedLabels: true,showUnselectedLabels: true,onTap: bottomOnTap,items: [BottomNavigationBarItem(icon: homeIcon,label: "Home"),
      BottomNavigationBarItem(icon: teamsIcon,label:"My Teams"),
      BottomNavigationBarItem(icon: notiIcon,label: "Notifications"),
      BottomNavigationBarItem(icon: menuIcon,label: "Menu"),
    ],),
    );
  }
  void bottomOnTap(int clickedId)
  {
    setState(() {
      if(clickedId==3) {
          key.currentState!.openEndDrawer();
      } else {
        pageIndex = clickedId;
      }
    });
  }
}
class drawerListChild extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(height: 30,width:double.infinity,child: Padding(padding: const EdgeInsets.only(left: 20),child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
      SvgPicture.asset("user.svg"),
      SizedBox(height: 30,width: 10,),
      Text("Attendance")
    ],)),);
  }
}












//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