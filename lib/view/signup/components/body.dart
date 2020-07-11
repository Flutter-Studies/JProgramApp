
import 'package:flutter/material.dart';

import 'package:JprogramApp/view/login/login.dart';
import 'package:JprogramApp/view/signup/components/background.dart';
import 'package:JprogramApp/view/signup/components/or_divider.dart';
import 'package:JprogramApp/view/signup/components/social_icon.dart';

import 'package:JprogramApp/view/utils/have_account.dart';
import 'package:JprogramApp/view/utils/rounded_button.dart';
import 'package:JprogramApp/view/utils/rounded_input.dart';
import 'package:JprogramApp/view/utils/password_field.dart';



class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Background(
      
      child: SingleChildScrollView(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.20,
            ),

            SizedBox(height: size.height * 0.02),

            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {},
            ),

            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            
            SizedBox(height: size.height * 0.03),
            
            AlreadyHaveAnAccountCheck(
              login: false,
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
            
            OrDivider(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}