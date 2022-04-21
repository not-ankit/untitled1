import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navNotifications extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navNotificationsState();
  }
}
class navNotificationsState extends State{
  static var dummy_notifs = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: Colors.white,iconTheme: IconThemeData(color:Color(0xff4F5561)),title: Text("Notifications"),titleTextStyle: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color:Color(0xff4F5561)),centerTitle: true,),
    body: _getNotificationBody(),);
  }

  Widget _getNotificationBody()
  {
    for(int i=0;i<20;i++)
    {
      int read = 0;
      if(i>4) {
        read = 1;
      }
      else
        {
          read = 0;
        }
      dummy_notifs.add({"content":"Content of Notification","read":read,"date":"20th Novemenber 2022 at ","time":"9:00 PM"});
    }
    print(dummy_notifs.length);
    return Flex(direction: Axis.vertical,children: [
      Flexible(child:Container(width: double.infinity,height: double.infinity,child: Padding(padding:EdgeInsets.all(20),
        child: ListView.separated(physics: AlwaysScrollableScrollPhysics(),itemBuilder: (BuildContext context,int index){
          return notificationListChild(index);
        }, separatorBuilder: (BuildContext context,int index){
          return SizedBox(height: 10,width: double.infinity,);
        }, itemCount: dummy_notifs.length),),))
    ],);
  }
}

class notificationListChild extends StatefulWidget
{
  static int index=0;
  notificationListChild(int i)
  {index = i;}
  @override
  State<StatefulWidget> createState() {
    return notificationListChildState();
  }
}
class notificationListChildState extends State<notificationListChild>
{
  @override
  Widget build(BuildContext context) {
    Map m = navNotificationsState.dummy_notifs[notificationListChild.index];
    print("index"+notificationListChild.index.toString());
    if(m["read"]==1) {
      return Container(width: double.infinity,
          child:Padding(padding:EdgeInsets.only(left:10,right:10),child: Card(elevation: 4,
          child:Padding(padding: EdgeInsets.all(20),
          child: Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text(m["content"],style:GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0xff32324D)),),
            SizedBox(height: 10,width:double.infinity),
            Text(m["date"]+m["time"],style: GoogleFonts.poppins(fontSize: 12,fontWeight:FontWeight.w400,color:Color(0xff6E8296)),)
          ],),),)),));
    } else {
      return Container(width: double.infinity,
            child:Padding(padding:EdgeInsets.only(left:10,right:10),child: Card(elevation: 4,
                child:Padding(padding: EdgeInsets.all(20),
                  child: Container(
                    child: Row(children: [
                      Align(child:Column(mainAxisAlignment: MainAxisAlignment.start,children:[
                        Icon(Icons.add,color: Color(0xff2B55B7),),
                      ]),alignment: Alignment.topCenter,),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Text(m["content"],style:GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff1741A3)),),
                        SizedBox(height: 10,),
                        Text(m["date"]+m["time"],style: GoogleFonts.poppins(fontSize: 12,fontWeight:FontWeight.w400,color:Color(0xff6E8296)),),
                        SizedBox(height: 10),
                        ElevatedButton(onPressed: onTakeActionPressed,child: Container(child: Text("Take Action",style:GoogleFonts.poppins(color: Color(0xff2B55B7))),),
                          style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),side:
                          MaterialStateProperty.all(BorderSide(color:Color(0xff2B55B7)))),)
                      ],)
                    ],),),)),));
    }
  }
 void onTakeActionPressed()
 {
   
 } 
}