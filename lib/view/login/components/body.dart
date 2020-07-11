
import 'package:flutter/material.dart';

import 'background.dart';
import 'package:JprogramApp/view/signup/signup.dart';

import 'package:JprogramApp/view/utils/rounded_button.dart';
import 'package:JprogramApp/view/utils/rounded_input.dart';
import 'package:JprogramApp/view/utils/password_field.dart';
import 'package:JprogramApp/view/utils/have_account.dart';


class Body extends StatelessWidget {
  
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return Background(
      
      child: SingleChildScrollView(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            
            //SizedBox(height: size.height * 0.03),
            
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.28,
            ),
            
            SizedBox(height: size.height * 0.03),
            
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            
            SizedBox(height: size.height * 0.03),
            
            AlreadyHaveAnAccountCheck(
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
          ],
        ),
      ),
    );
  }
}