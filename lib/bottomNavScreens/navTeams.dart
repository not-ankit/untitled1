import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class navTeams extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navTeamsState();
  }
}
class navTeamsState extends State{
  static var constarr = ["Total","On Leave","Weekly Off","Test"];
  static var testarr = [22,3,43,55];
  static var namelist = ["Jane","Ankit","test","test","test"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,toolbarHeight: MediaQuery.of(context).size.height/8.4,title: Text("Team Insights",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff4F5561)),),centerTitle: true, backgroundColor: Color(0xffFEFEFE),),
    body: teamsBody() ,floatingActionButton: FloatingActionButton(onPressed: onFloatingPressed,backgroundColor: Color(0xff2B55B7),),);
  }
  void onFloatingPressed()
  {

  }
  Widget teamsBody()
  {
    return Padding(padding: EdgeInsets.only(top:10),child:Column(children:[
      Container(width:double.infinity,height:MediaQuery.of(context).size.height/4.4,
          child:ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: testarr.length,itemBuilder: (BuildContext context,int index){
      return listChild(index);
    }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(width: 5,height: 10,);
    },)),
    SizedBox(height: 20,width: double.infinity,),
    Container(width:double.infinity,height:350,child: ListView.builder(itemBuilder: (BuildContext context,int index){
      return teamsListChild();
    },itemCount: namelist.length,),)
    ]));
  }
}

class listChild extends StatelessWidget
{
  int index = 0;
  listChild(index, {Key? key}) : super(key: key)
  {
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    var numStyle = GoogleFonts.roboto(fontSize: 33,fontWeight: FontWeight.w600,color: Color(0xff2B55B7));
    var underStyle = GoogleFonts.poppins(fontSize: 12,color: Color(0xff484848),fontWeight: FontWeight.w400);
    return Container(height:MediaQuery.of(context).size.height/5,width:MediaQuery.of(context).size.width/3.55,child:Padding(padding:EdgeInsets.fromLTRB(0,10,0,10),
        child:Card(elevation: 3,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),child:Column(children: [
      Text(navTeamsState.testarr[index].toString(),style: numStyle),
      SizedBox(height: 5,width:double.infinity),
      Text(navTeamsState.constarr[index],style:underStyle)
    ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,))));
  }
}


class teamsListChild extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.height/10,width: 300,
      child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Padding(padding:const EdgeInsets.fromLTRB(10,0,0, 0),child:
      Container(width: 30,height: 30,decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.black))),
      SizedBox(width: 10,),
        Text("Test name",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff484848)),),
      SizedBox(width: 40,),
    Container(child:
    Row(children: [
        Row(children:[
          Container(child: SvgPicture.asset("assets/upload.svg"),width: 10,height: 10,),
          Text("09:45 AM")
        ]),
        SizedBox(width: 30,),
        Row(children:[
          Container(child: SvgPicture.asset("assets/User.svg"),width: 10,height: 10,),
          Text("09:45 AM")
        ])
      ],))
    ]));
  }
}