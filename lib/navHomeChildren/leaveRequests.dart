import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/navHomeChildren/attendanceRequests.dart';

class leaveRequests extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return leaveRequestsState();
  }
}
class leaveRequestsState extends State<leaveRequests>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(title: Text("Leave Requests"),iconTheme: IconThemeData(color: Colors.black),titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff4F5561)),backgroundColor: Color(0xffFEFEFE),centerTitle: true,elevation: 10,),
      body: leaveRequestBody(),);
  }

  Widget leaveRequestBody()
  {
    var testlist = ["Test1","Test2","Test3","Test4","Test5"];
    return Container(child:Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),child:Column(children: [
      TextField(decoration:InputDecoration(hintText: "Search",prefixIcon: Icon(Icons.search),fillColor: Color(0xff3E577D1A).withOpacity(0.1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(17),borderSide: BorderSide.none),filled: true),),
      SizedBox(height: 30,),
      Flexible(child:Container(width:double.infinity,height: MediaQuery.of(context).size.height,child:ListView.separated(itemBuilder: (BuildContext context, int index){
        return sharedProfileCard(testlist[index]);
      }, separatorBuilder: (BuildContext context, int index)
      {
        return SizedBox(height: 10,);
      }, itemCount: testlist.length))
      )],)));
  }
}