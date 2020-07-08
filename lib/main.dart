import 'package:HomePage/body.dart';
import 'package:flutter/material.dart';
import './logo.dart';
import './options_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './body.dart';

main() => runApp(HomePage());

class HomePage extends StatefulWidget {

  HomePageState createState() {  
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        body: Body(),
      ),
    ); 
  }
}
