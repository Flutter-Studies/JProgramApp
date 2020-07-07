import 'package:flutter/material.dart';
import './logo.dart';
import './options_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text(
            
            'JProgram App',
            textAlign: TextAlign.center,

          ),

        ),

        body: Column(
          children: <Widget>[
            
            Logo(""),

            OptionButton("Login", "Pressionado o botão de Login", Icons.account_circle),
            OptionButton("Create New Cont", "Pressionado o botão de Criar Conta", Icons.assignment),

            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[

                Icon(
                  FontAwesomeIcons.linkedinIn,
                  size: 50,
                  
                ),

                Icon(
                  FontAwesomeIcons.instagram,
                  size: 50,
                  
                ),

                Icon(
                  FontAwesomeIcons.facebook,
                  size: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    ); 
  }
}
