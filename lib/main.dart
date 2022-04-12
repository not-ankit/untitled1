import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/states/homeState.dart';
import 'package:untitled1/states/mainState.dart';
import 'states/loginState.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nabble",
      home: home(),
      initialRoute: "/intro",
      routes: {
        "/intro" : (context) => home(),
        "/login": (context) => login(),
        "/main": (context) => mainScreen()
      },
    );
  }
  void OnPressedLogin()
  {

  }
}
class home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}
class mainScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return mainState();
  }
}
class login extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return loginState();
  }
}