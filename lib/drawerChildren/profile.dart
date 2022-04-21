import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return profileState();
  }
}
class profileState extends State<profile>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,title: Text("Profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff4F5561)),),centerTitle: true,iconTheme: IconThemeData(color: Color(0xff4F5561)),),body: profileBody(),);
  }

  Widget profileBody()
  {
    return Stack(children:[
      SingleChildScrollView(child:Padding(padding:EdgeInsets.only(top:20),child:Column(children: [
      Container(width: double.infinity,child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        Stack(children: [
          Container(child:CircleAvatar(backgroundImage: Image.asset("assets/User.svg").image,backgroundColor: Colors.black,),height: MediaQuery.of(context).size.height/8,width:MediaQuery.of(context).size.height/8,),
          Container(child:Align(alignment: Alignment.bottomRight,child:Icon(Icons.download_for_offline,color: Colors.red,)),height: MediaQuery.of(context).size.height/8,width:MediaQuery.of(context).size.height/8,),
        ],),
        Text("Name",style: makeStyle(FontWeight.w500, 16, Color(0xff484848)),),
        Text("Department",style:makeStyle(FontWeight.w400, 14, Color(0xff4E6276)))
      ],),),
      SizedBox(height: 20,),

      Container(width: double.infinity,child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
        child:Card(elevation: 3,
            child:Padding(padding:EdgeInsets.only(right: 10,left: 20,bottom: 20,top: 20),
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text("General Information",style:makeStyle(FontWeight.w400, 12, Color(0xff6E8296))),
        SizedBox(height: 20,width:double.infinity),
        Row(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            queryText("Employee Id"),
            SizedBox(height: 20),
            queryText("Employment Type"),
            SizedBox(height: 20),
            queryText("Reporting Manager"),
            SizedBox(height: 20),
          ],),
          SizedBox(width: MediaQuery.of(context).size.width/10,),
          Flexible(child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            answerText("2123"),
            SizedBox(height: 20),
            answerText("Manager - Full Time"),
            SizedBox(height: 20),
            answerText("reposting manager"),
            SizedBox(height: 20),
          ],))
        ],)
      ],)),),)),

      SizedBox(height: 30,),

      Container(width: double.infinity,child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
        child: Card(elevation: 3,
          child: Padding(padding:EdgeInsets.only(right: 10,left: 20,bottom: 20,top: 20),
              child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text("Contact Information",style:makeStyle(FontWeight.w400, 12, Color(0xff6E8296))),
                SizedBox(height: 20,width:double.infinity),
                Row(children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    queryText("Email"),
                    const SizedBox(height: 40),
                    queryText("Phone"),
                    const SizedBox(height: 40),
                    queryText("Address"),
                    const SizedBox(height: 40),
                  ],),
                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                  Flexible(child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    answerText("ankit.thakur@developmentlogics.cogdhgdfghfm"),
                    SizedBox(height: 27),
                    answerText("+91 0000000000"),
                    SizedBox(height: 40),
                    answerText("Yol, Dharamshala"),
                    SizedBox(height: 40),
                  ],))
                ],)
              ],)),),)),
      SizedBox(height: 30,),

      Container(width: double.infinity,child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
        child: Card(elevation: 3,
          child: Padding(padding:EdgeInsets.only(right: 80,left: 20,bottom: 20,top: 20),
              child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text("Security",style:makeStyle(FontWeight.w400, 12, Color(0xff6E8296))),
                SizedBox(height: 20,width:double.infinity),
                Row(children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    queryText("Password"),
                    const SizedBox(height: 20),
                  ],),
                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                  Flexible(child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    answerText("**********"),
                    SizedBox(height: 20),
                  ],))
                ],)
              ],)),),))
    ],)))
    ]);
  }

  Text queryText(String query)
  {
    return Text(query,style: makeStyle(FontWeight.w500,12,Color(0xff484848)),softWrap: true,);
  }

  Text answerText(String answer)
  {
    return Text(answer,style: makeStyle(FontWeight.w400, 12, Color(0xff484848)),textAlign: TextAlign.start,softWrap: true,);
  }
  TextStyle makeStyle(FontWeight weight,double size,Color color)
  {
    return GoogleFonts.poppins(fontSize: size,fontWeight: weight,color: color);
  }
}