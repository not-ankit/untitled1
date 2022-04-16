import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';
import 'package:untitled1/navHomeChildren/attendanceRequests.dart';

class navHome extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navHomeState();
  }
}
class navHomeState extends State{
  static var constarr = ["Total","On Leave","Weekly Off","Test"];
  static var testarr = [22,3,43,55];
  static var testrequests = ["","Attendance Requests","Extra Requests"];
  @override
  Widget build(BuildContext context) {
    const cardColor = Color(0xff2B55B7);
    return Stack(
        children:[
    Padding(padding: EdgeInsets.fromLTRB(12, 40, 12, 40),child:SingleChildScrollView(child:Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.center,
      children: [SvgPicture.asset("assets/User.svg",width: 40,height: 40,),SizedBox(height:2,width:5),Column(children: [Text("Hello Text",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:Color(0xff484848))),),
         SizedBox(height: 5,), Text("Shift Status",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color:Color(0xffA1A1A1))),)],),Spacer(),SvgPicture.asset("assets/Logo.svg")],
    ),
      const SizedBox(height: 10,width: 10,)
      ,
      Container(height: MediaQuery.of(context).size.height/3,width: double.infinity,child:Card(shadowColor: Colors.black,elevation: 4,color: cardColor,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      child:Padding(padding: EdgeInsets.all(20),child: cardChild())),),
      SizedBox(height:10,width: double.infinity,),Row(children: [Text("Team Insights",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:Color(0xff2A3140))),),Spacer(),Icon(Icons.help)],),
       const SizedBox(height: 20,width: 10,)
      ,Container(width:double.infinity,height:MediaQuery.of(context).size.height/4.9,child:ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: testarr.length,itemBuilder: (BuildContext context,int index){
        return listChild(index);
      }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 5,height: 10,);
      },)),
      const SizedBox(height: 20,width: 10,),

      GestureDetector(
          onTap: attendanceRequestOnTap,
          child:Container(width: double.infinity,height: 100,child:Card(color: Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
        Padding(padding:EdgeInsets.fromLTRB(10, 0, 20, 0),child:Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffFDF4DC)),child:Center(child:Text("10",style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffD9822F)))))),
        Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text("Attendance Requests",style:GoogleFonts.poppins(fontSize:16,fontWeight: FontWeight.w500,color: Color(0xff444444))),
          SizedBox(height: 4,width: 20,),
          Row()
        ],),
        Spacer(),
        Padding(padding:const EdgeInsets.only(right: 20),child:Container(width: 20,height: 20,child:RotatedBox(quarterTurns: -1,child:SvgPicture.asset("assets/down.svg"))))
      ],)))),

      const SizedBox(height: 20,width: 10,),
      Container(width: double.infinity,height: 100,child:Card(color: Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
            Padding(padding:EdgeInsets.fromLTRB(10, 0, 20, 0),child:Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff5B88F4).withOpacity(0.19)),child:Center(child:Text("10",style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff2C56B9)))))),
            Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Leave Requests",style:GoogleFonts.poppins(fontSize:16,fontWeight: FontWeight.w500,color: Color(0xff444444))),
              SizedBox(height: 4,width: 20,),
              Row()
            ],),
            Spacer(),
            Padding(padding:const EdgeInsets.only(right: 20),child:Container(width: 20,height: 20,child:RotatedBox(quarterTurns: -1,child:SvgPicture.asset("assets/down.svg"))))
          ],))),

      const SizedBox(height: 30,width: 10,),

      Row(children: [
        Text("My Requests",style:GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16,color:Color(0xff484848))),
      const Spacer(),
        Text("view all",style:GoogleFonts.poppins(color:Color(0xff2B55B7),fontWeight: FontWeight.w400,fontSize: 12))
      ],),

      const SizedBox(height: 20,width: 10,),

     /* Row(children: [
        Flexible(child: Container(width: double.infinity,height:MediaQuery.of(context).size.height/5.6,
            child:Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),color: const Color(0xff2C56B9),child:Padding(padding:EdgeInsets.all(20),
            child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(),
              SizedBox(),
              Text("Create \n New",style:GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white))
        ],)))),flex:21),
        Flexible(child:Container(width: double.infinity,),flex: 1,),
        Flexible(child:Container(width:double.infinity,child:Card()),flex: 38,)
      ],)*/


      Container(height:MediaQuery.of(context).size.height/5.6,width:double.infinity,child:ListView.separated(scrollDirection: Axis.horizontal,itemBuilder:(BuildContext context,int index){
        return myRequestChildren(index);
      },separatorBuilder: (BuildContext context,int index){
        return SizedBox();
      }, itemCount: testrequests.length,))
    ],))),
          Align(alignment: Alignment.bottomCenter,
              child:Padding(padding:EdgeInsets.only(left: 30,right: 30,bottom: 0),child:SliderButton(action: sliderSlided,height: 52,width: double.infinity,radius: 8,buttonSize: 34,backgroundColor: const Color(0xff2B55B7),
                label:Text("Slide to check in",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color:Colors.white),),
                alignLabel: Alignment.center,
                baseColor: Colors.white,
                icon: Padding(padding: EdgeInsets.all(3),
              child:Container(child:RotatedBox(child:SvgPicture.asset("assets/downarrow.svg"),quarterTurns: 3,))),)))
        ]);
  }
  void sliderSlided()
  {

  }
  void attendanceRequestOnTap()
  {
    var route = MaterialPageRoute(builder: (BuildContext context) {
      return attendanceRequests();
    });
    Navigator.push(context, route);
  }
}
class myRequestChildren extends StatelessWidget
{
  int index = 0;
  myRequestChildren(int i)
  {
    this.index = i;
  }
  @override
  Widget build(BuildContext context) {
    switch(index)
    {
      case 0:
        return Container(width:MediaQuery.of(context).size.width/3.7,height:MediaQuery.of(context).size.height/5.6,
            child:Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),color: const Color(0xff2C56B9),child:Padding(padding:EdgeInsets.all(10),
                child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Container(child:Icon(Icons.add,color: Colors.white,)),
                  SizedBox(),
                  Text("Create \n New",style:GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.center,)
                ],))));
      default:
        return  Container(width:MediaQuery.of(context).size.width/2,height:MediaQuery.of(context).size.height/5.6,child:Card(color: Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            child:Padding(padding:const EdgeInsets.only(left: 10),child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
              Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffFDF4DC)),child:Center(child:Text("1",style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffD9822F))))),
              Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text("Attendance \nRequests",style:GoogleFonts.poppins(fontSize:16,fontWeight: FontWeight.w500,color: Color(0xff444444))),
                SizedBox(height: 4,width: 20,),
                Text("Approval Pending",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xff6E8296)))
              ],),
              Spacer(),
              Padding(padding:const EdgeInsets.only(right: 20),child:Container(width: 20,height: 20,child:RotatedBox(quarterTurns: -1,child:SvgPicture.asset("assets/down.svg"))))
            ],))));
    }
  }
}
class cardChild extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var commonStyle = GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:Color(0xffEAEAEF));
    var timeStyle = GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 29,color:Color(0xffF6F6F9));
    var meridianStyle = GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0xffF6F6F9));
    var ISTStyle = GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 10,color:Color(0xffEAEAEF));
    var checkStyle = GoogleFonts.roboto(fontWeight: FontWeight.w400,fontSize: 12,color:Color(0xffEAEAEF));
    var checkTimeStyle = GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 14,color:Colors.white);
    return Container(child: Column(children: [
      Row(children: [Column(children: [Text("Wednesday",style:commonStyle),SizedBox(height: 5,width:3),Text("25th Feb,2022",style:commonStyle)],),Spacer(),Text("10:20AM",style: TextStyle(fontSize: 30,color:Colors.white),)],)
      ,Spacer(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Check in",style:TextStyle(color:Colors.white)),SizedBox(width: 20,height: 10,),Container(height:30,width:30,child:SvgPicture.asset("assets/clock.svg",color:Colors.white)),SizedBox(width: 20,height: 10,),Text("09:27 AM",style:TextStyle(color:Colors.white))],),
        Column(crossAxisAlignment: CrossAxisAlignment.center,children:  [Text("Check in",style:TextStyle(color:Colors.white)),SizedBox(width: 20,height: 10,),Container(height:30,width:30,child:SvgPicture.asset("assets/clock.svg",color:Colors.white)),SizedBox(width: 20,height: 10,),Text("09:27 AM",style:TextStyle(color:Colors.white))],),
        Column(crossAxisAlignment: CrossAxisAlignment.center,children:  [Text("Check in",style:TextStyle(color:Colors.white)),SizedBox(width: 20,height: 10,),Container(height:30,width:30,child:SvgPicture.asset("assets/clock.svg",color:Colors.white)),SizedBox(width: 20,height: 10,),Text("09:27 AM",style:TextStyle(color:Colors.white))],)],)
    ],),);
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
    return Container(height:MediaQuery.of(context).size.height/5,width:MediaQuery.of(context).size.width/3.7,child:Padding(padding:EdgeInsets.fromLTRB(0,10,0,10),child:Card(elevation: 3,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),child:Column(children: [
      Text(navHomeState.testarr[index].toString(),style: numStyle),
      SizedBox(height: 5,width:double.infinity),
      Text(navHomeState.constarr[index],style:underStyle)
    ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,))));
  }
}


//test