
import 'package:flutter/material.dart';
import 'package:JprogramApp/view/home_page/body.dart';

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
