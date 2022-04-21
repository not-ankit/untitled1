import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/tabs/attendanceTab.dart';
import 'package:untitled1/tabs/leaveTab.dart';

class viewMyRequests extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => viewMyRequestState();
}

class viewMyRequestState extends State<StatefulWidget>
{
  Color tabColor = Color(0xff484848);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(appBar: AppBar(backgroundColor: Colors.white,title: Text("My Requests"),titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color:Color(0xff4F5561)),centerTitle: true,iconTheme: IconThemeData(color:Color(0xff4F5561)),
        bottom: TabBar(indicatorColor: tabColor,labelColor: tabColor,unselectedLabelColor: tabColor.withOpacity(0.74),tabs: [
          Tab(child: Text("Attendance",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),),
          Tab(child: Text("Attendance",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),))
        ],),),body: Stack(children:[
          TabBarView(children: [
            attendanceTab(),
            leaveTab()
          ],),
          Padding(padding:EdgeInsets.only(right: 10,bottom: 10),child:Align(child:FloatingActionButton(onPressed: onFloatingActionPressed,child: Center(child:Icon(Icons.add,color: Colors.white,)),backgroundColor: Color(0xff2B55B7),),alignment: Alignment.bottomRight,),)
        ]
           )));
  }
  void onFloatingActionPressed()
  {

  }
}
