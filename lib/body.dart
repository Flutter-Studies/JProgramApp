import 'package:flutter/material.dart';
import './rounded_button.dart';
import './constants.dart';
import './background.dart';


class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Background(
      
      child: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(
              "Welcome to the JProgram App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.30,
            ),
            
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            
            RoundedButton(
              text: "SIGN UP",
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}