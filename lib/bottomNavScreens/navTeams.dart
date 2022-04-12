import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class navTeams extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navTeamsState();
  }
}
class navTeamsState extends State{
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children:[Text("NavTeams is here")]),);
  }
}
class teamsListChild extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Padding(padding:const EdgeInsets.fromLTRB(10,0,0, 0),child:Container(width: 10,height: 10,decoration: const BoxDecoration(shape: BoxShape.circle),)),
      const Text("Test name"),
      const Spacer(),
    Container(child:
    Row(children: [
        Row(crossAxisAlignment: CrossAxisAlignment.center,children:[
          Container(child: SvgPicture.asset("callincoming"),width: 10,height: 10,),
          Text("09:45 AM")
        ]),
        const Spacer(),
        Row(crossAxisAlignment: CrossAxisAlignment.center,children:[
          Container(child: SvgPicture.asset("calloutgoing"),width: 10,height: 10,),
          Text("09:45 AM")
        ])
      ],))
    ]),height: MediaQuery.of(context).size.height/7,width: double.infinity,);
  }
}