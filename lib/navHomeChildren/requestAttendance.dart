import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class requestAttendance extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return requestAttendanceState();
  }
}
class requestAttendanceState extends State<requestAttendance>
{
  int? dropDownVal;
  static var testarr = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffE5E5E5),appBar:AppBar(title:Text("Request Attendance",style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xff4F5561)))
      ,centerTitle: true, backgroundColor: Colors.white,iconTheme: IconThemeData(color: Color(0xff4F5561)),),body:
    SingleChildScrollView(child:Padding(padding:EdgeInsets.only(left: 20,right: 20,top: 20),child:Form(child:
      Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        DropdownButtonFormField<int>(hint:Text("Requesting For", style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color:Color(0xff919191))),itemHeight: 54,value: dropDownVal,
          items: testarr.map((e) => DropdownMenuItem(value: e,child: Text("hi"))).toList(),
    decoration: InputDecoration(helperText:"Assistive Text",
    helperStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff00000099)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),onChanged: (value) {
            setState(() {
              dropDownVal = value;
            });
          },),

        SizedBox(height: 20,width:double.infinity),

        DropdownButtonFormField(hint: Text("Date",style:GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff919191))),
            icon: Icon(Icons.wysiwyg_sharp),value: dropDownVal
            ,items: testarr.map((e) => DropdownMenuItem(value: e,child: Text("hi"))).toList(),
            onChanged: (value)
        {
          setState(() {
            dropDownVal = value as int?;
          });
        },decoration: InputDecoration(helperText:"Assistive Text",
                helperStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff00000099)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),

        SizedBox(height: 20,width:double.infinity),

        DropdownButtonFormField(hint: Text("Check In Time",style:GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff919191)))
            ,value: dropDownVal
            ,items: testarr.map((e) => DropdownMenuItem(value: e,child: Text("hi"))).toList(),
            onChanged: (value)
            {
              setState(() {
                dropDownVal = value as int?;
              });
            },decoration: InputDecoration(helperText:"Assistive Text",
                helperStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff00000099)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),

        SizedBox(height: 20,width:double.infinity),

        DropdownButtonFormField(hint: Text("Check Out Time",style:GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff919191))),
            value: dropDownVal
            ,items: testarr.map((e) => DropdownMenuItem(value: e,child: Text("hi"))).toList(),
            onChanged: (value)
            {
              setState(() {
                dropDownVal = value as int?;
              });
            },decoration: InputDecoration(helperText:"Assistive Text",
                helperStyle: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff00000099)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),

        SizedBox(height: 20,width:double.infinity),

      Container(width: double.infinity,height: 105,
          child:TextField(
            decoration: InputDecoration(hintText: "Label",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            helperText: "Assistive Text"),
          )),

        SizedBox(height: 20,width:double.infinity),

        Container(width:double.infinity,height:48,child:ElevatedButton(onPressed: onSubmitClicked, child: Text("Submit Request",
            style:GoogleFonts.poppins(fontSize:15,fontWeight: FontWeight.w600,color:Colors.white)),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff2B55B7)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),))
      ],),),)));
  }
  void onSubmitClicked()
  {

  }
}