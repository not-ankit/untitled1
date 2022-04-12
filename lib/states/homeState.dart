import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
class homeState extends State{
  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xff0B1E51);
    const buttonColor = Color(0xff2B55B7);
    const leftPad = 24.00000;
    return Scaffold(body: Container(child:SingleChildScrollView(child:Column(crossAxisAlignment: CrossAxisAlignment.center,children:
    [
      Container(child:Stack(children:[Container(width:double.infinity,height: 300,child:SvgPicture.asset("assets/subtractedvector.svg"))]),height: 300,width: 300,),
      Column(mainAxisAlignment:MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: [Padding(padding:EdgeInsets.only(left:leftPad),child:Text("Welcome to \nNablle",textAlign: TextAlign.left,style:
      GoogleFonts.poppins(textStyle: const TextStyle(color: textColor,fontSize: 36,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal)),)),
        Padding(padding:const EdgeInsets.only(left:leftPad),child:Text("Enter your workspace \ncredentials to get started",textAlign:TextAlign.left,style:GoogleFonts.poppins(textStyle: const TextStyle(color: textColor,fontSize: 18,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal))))
        ,const SizedBox(width: 10,height: 22,),
        const Padding(padding: EdgeInsets.fromLTRB(leftPad, 0, leftPad, 0),child:TextField(decoration: InputDecoration(labelText: "Workspace ID",hintText: "DL123",helperText: "URL of your workspace",border: OutlineInputBorder()),))
        ,const SizedBox(width: 10,height: 20,)
        ,Padding(padding: const EdgeInsets.fromLTRB(leftPad,0,leftPad,0),child:Center(child:ElevatedButton(onPressed: onPressedLogin, child: Text("Login to Workspace"),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),minimumSize: const Size.fromHeight(48)),)))],)
    ]
    ))));
  }
  void onPressedLogin()
  {
    Navigator.pushNamed(context, "/login");
  }
}