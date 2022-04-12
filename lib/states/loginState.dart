import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class loginState extends State
{
  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xff0B1E51);
    const buttonColor = Color(0xff2B55B7);
    const leftPad = 24.00000;
    return Scaffold(body:SingleChildScrollView(child:Stack(children:[
      SvgPicture.asset("assets/subone.svg",width:double.infinity,height: 300,),
      Padding(padding:const EdgeInsets.fromLTRB(0, 100, 0, 0),child:Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(padding:const EdgeInsets.fromLTRB(leftPad, 0, 0, 0),child:SvgPicture.asset("assets/Logo.svg",width: 40,height: 40,)),
        const SizedBox(width: 10,height: 10,),
        Padding(padding: const EdgeInsets.only(left: leftPad),child:Text("Development \nLogics",style:GoogleFonts.poppins(textStyle:const TextStyle(color:textColor,fontSize: 24,fontWeight: FontWeight.bold))))
        ,const SizedBox(width: 10,height:20,),
        Padding(padding: const EdgeInsets.fromLTRB(leftPad, 0, leftPad, 0),child:TextField(decoration: InputDecoration(hintText: "Username or Email",suffixIcon: Padding(padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),child:SvgPicture.asset("assets/User.svg")),suffixIconConstraints: const BoxConstraints(maxHeight: 30,maxWidth: 30)
            ,border: OutlineInputBorder()),style: TextStyle(),)),
        const SizedBox(width: 10,height:20,),
        Padding(padding: const EdgeInsets.fromLTRB(leftPad, 0, leftPad, 0),child:TextField(obscureText: true,enableSuggestions: false,autocorrect: false,decoration: InputDecoration(hintText: "Password",labelText: "Password",suffixIcon: Padding(padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),child:SvgPicture.asset("assets/closedeye.svg")),
            suffixIconConstraints: const BoxConstraints(maxWidth: 30,maxHeight: 30),border: OutlineInputBorder()),style: TextStyle(),))
        ,const SizedBox(height: 20,width: 10,),
        Padding(padding: const EdgeInsets.fromLTRB(leftPad,0,leftPad,0),child:Center(child:ElevatedButton(onPressed: onPressedLogin, child: Text("Login"),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),minimumSize: const Size.fromHeight(48)),)))
        ,const SizedBox(height: 20,width: 10,)
        ,Center(child: Text("Forgot Password?",style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 17,fontStyle: FontStyle.normal)),),)],))
    ])));
  }
  void onPressedLogin()
  {
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pushNamed(context, "/main");
  }
}