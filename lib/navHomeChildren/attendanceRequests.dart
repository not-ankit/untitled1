import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class attendanceRequests extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return attendanceRequestState();
  }
}
class attendanceRequestState extends State<attendanceRequests>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar:
   AppBar(title: Text("Attendance Requests"),iconTheme: IconThemeData(color: Colors.black),titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff4F5561)),backgroundColor: Color(0xffFEFEFE),centerTitle: true,elevation: 10,),
     body: attendanceRequestBody(),);
  }

  Widget attendanceRequestBody()
  {
    var testlist = ["Test1","Test2","Test3","Test4","Test5"];
    return Container(child:Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),child:Column(children: [
      TextField(decoration:InputDecoration(hintText: "Search",prefixIcon: Icon(Icons.search),fillColor: Color(0xff3E577D1A).withOpacity(0.1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(17),borderSide: BorderSide.none),filled: true),),
      SizedBox(height: 30,),
      Flexible(child:Container(width:double.infinity,height: MediaQuery.of(context).size.height,child:ListView.separated(itemBuilder: (BuildContext context, int index){
        return sharedProfileCard();
      }, separatorBuilder: (BuildContext context, int index)
          {
            return SizedBox(height: 10,);
          }, itemCount: testlist.length))
      )],)));
  }
}

class sharedProfileCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: MediaQuery.of(context).size.height/3,
        child:Card(color: Colors.white,elevation: 10,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(padding: EdgeInsets.all(15),child:Column(children: [
          Row(children: [
            Icon(Icons.verified_user),
            SizedBox(width:10),
            Text("Name",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 15,color:Color(0xff484848)),),
            Spacer(),
            Container(width: 100,height: 20,child:
              Center(child:Text("Check in & out",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:Color(0xff6E8296)),)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffEAF1F9)),
            )
          ],),
          SizedBox(width: double.infinity,height: 20,),


          Row(children: [
            Icon(Icons.date_range),
            SizedBox(width: 10,),
            Text("23 Jan,2022",style:makeStyle(14, FontWeight.w500, Color(0xff5C5C5C)))
          ],),
          SizedBox(width: double.infinity,height: 20,),





          Row(children: [
            Icon(Icons.call_missed_outgoing),
            SizedBox(width:4,),
            Text("00:00 AM",style:makeStyle(14, FontWeight.w500, Color(0xff5C5C5C))),
            SizedBox(width: 50,),
            Icon(Icons.download_for_offline_outlined),
            SizedBox(width:4,),
            Padding(padding:EdgeInsets.only(right: 50),child:Text("00:00 AM",style:makeStyle(14, FontWeight.w500, Color(0xff5C5C5C))))
          ],),
          SizedBox(width: double.infinity,height: 20,),


          Row(),
          SizedBox(width: double.infinity,height: 20,),



          Row()
        ],)),));
  }
  TextStyle makeStyle(double size,FontWeight weight,Color color)
  {
    return GoogleFonts.poppins(fontWeight: weight,fontSize: size,color: color);
  }
}