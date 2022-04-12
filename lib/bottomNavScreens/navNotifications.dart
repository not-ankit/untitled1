import 'package:flutter/material.dart';

class navNotifications extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return navNotificationsState();
  }
}
class navNotificationsState extends State{
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children:[Text("NavNotificatiosn is here")]),);
  }
}