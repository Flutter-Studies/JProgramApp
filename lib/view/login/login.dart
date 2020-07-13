
import 'package:flutter/material.dart';
import 'package:JprogramApp/view/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
      
    );
    
  }

  AppBar buildAppBar(BuildContext context) {
    
    return AppBar(
      
      backgroundColor: Colors.blue[100],
      elevation: 0,
      
      leading: IconButton(
        
        icon: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      
      centerTitle: true,
      title: Text("JPROGRAM ",),

      actions: <Widget>[
        
        IconButton(
          icon: Icon(
            Icons.more_vert,
            // By default our  icon color is white
            color: Colors.black,
          ),
          onPressed: () {},
        ),

      ],

    );
  }

}