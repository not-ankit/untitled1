import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class leave extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return leaveState();
  }
}
class leaveState extends State<leave>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
      title: Text("Leave",
        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff4F5561)),),
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xff4F5561)),),
      body: leaveBody(),);
  }
  Widget leaveBody()
  {
    return Container(child: Padding(padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text("Leave Balance",style:GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18,color: Color(0xff4F5561))),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          Column(children: [
            Container(height: 88,width: 88,child:
            Stack(children: [
              Container(height: double.infinity,width: double.infinity,
                  child:CircularProgressIndicator(value: 0.5,valueColor: AlwaysStoppedAnimation<Color>(Color(0xff2B55B7)),backgroundColor: Color(0xffC1CFE5),strokeWidth: 10,)
              ),
              Center(child:Text("12/30",style:progressText()))
            ],),),
            Text("Unpaid leave",style:GoogleFonts.poppins(fontSize:12,fontWeight: FontWeight.w500,color: Color(0xff6E8296)))
          ],),

          Column(children: [
            Container(height: 88,width: 88,child:
            Stack(children: [
              Container(height: double.infinity,width: double.infinity,
                  child:CircularProgressIndicator(value: 0.5,valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD9822F)),backgroundColor: Color(0xffFAE7B9),strokeWidth: 10,)
              ),
              Center(child:Text("12/30",style:progressText()))
            ],),),
            Text("Unpaid leave",style:GoogleFonts.poppins(fontSize:12,fontWeight: FontWeight.w500,color: Color(0xff6E8296)))
          ],),

          Column(children: [
            Container(height: 88,width: 88,child:
            Stack(children: [
              Container(height: double.infinity,width: double.infinity,
                  child:CircularProgressIndicator(value: 0.5,valueColor: AlwaysStoppedAnimation<Color>(Color(0xff822BB7)),backgroundColor: Color(0xff822BB7).withOpacity(0.28),strokeWidth: 10,)
              ),
              Center(child:Text("12/30",style:progressText()))
            ],),),
            Text("Unpaid leave",style:GoogleFonts.poppins(fontSize:12,fontWeight: FontWeight.w500,color: Color(0xff6E8296)))
          ],)
        ],),
        
        SizedBox(height: 30,),
        
        Container(width: double.infinity,height: 48,child:ElevatedButton(onPressed: onRequestLeaveClicked,child: Text("Request Leave"),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff2B55B7)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))))
        )),

        SizedBox(height: 30,),

        Row(children: [
          Text("Leave History",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16,color:Color(0xff484848)),),
          Spacer(),
          Text("view all",style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400))
        ],),

        SizedBox(height: 30,),

        Expanded(child:Container(width: double.infinity,
          child: ListView.separated(itemBuilder: (BuildContext context,int index)
        {
          return leaveHistoryChild(index);
          }, separatorBuilder: (BuildContext context,int index)
        {
          return SizedBox(height: 10,);
          }, itemCount: 3),))

      ],),),);
  }
  void onRequestLeaveClicked()
  {

  }
  TextStyle progressText()
  {
    return GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600,color:Color(0xff4D4D64));
  }
}
class leaveHistoryChild extends StatelessWidget
{
  late int index;
  leaveHistoryChild(this.index);
  var colors = [0xff822BB7,0xff2B55B7,0xffD9822F];
  @override
  Widget build(BuildContext context) {
     return Padding(padding:EdgeInsets.only(left:20,right:20),
         child:Container(
           child: Card(child:
             Padding(padding:EdgeInsets.all(10),
                 child:Column(crossAxisAlignment: CrossAxisAlignment.start,children:[
                   Row(children: [
                     Container(height: 10,width: 10,child: CircleAvatar(backgroundColor: Color(colors[index]),),),
                     SizedBox(width: 5,),
                     Text("Unpaid Leave",style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color:Color(0xff32324D)))
                   ],),
                   SizedBox(height: 20,),
                   Text("Date and time",style:GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color: Color(0xff6E8296)))
                 ])),),));
  }
}