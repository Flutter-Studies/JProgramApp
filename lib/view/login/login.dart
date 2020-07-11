
import 'package:flutter/material.dart';
import 'package:JprogramApp/view/Login/body.dart';

class LoginScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      //appBar: buildAppBar(),
      body: Body(),
    );
    
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_backspace,
          color: Colors.blue[50],
        ),
        onPressed: () {},
      ),
    );
  }

}