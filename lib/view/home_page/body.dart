
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:JprogramApp/view/signup/signup.dart';
import 'package:JprogramApp/view/utils/rounded_button.dart';
import 'package:JprogramApp/view/login/login.dart';

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
            
            SizedBox(height: size.height * 0.05),

            Text(
              "Welcome to the JProgram App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.28,
            ),
            
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            
            RoundedButton(
              text: "SIGN UP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),

            SizedBox(height: size.height * 0.05),
            Icon(
              FontAwesomeIcons.github,
              size: 50,          
            ),

            SizedBox(height: size.height * 0.02),
            Text(
              '2020 \u00a9 JProgram',
              style: TextStyle(fontSize: 17),
            )

          ],
        ),
      ),
    );
  }
}