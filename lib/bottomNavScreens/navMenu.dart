import 'package:flutter/material.dart';

class navMenu extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navMenuState();
  }
}
class navMenuState extends State{
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children:[Text("NavMenu is here")]),);
  }
}