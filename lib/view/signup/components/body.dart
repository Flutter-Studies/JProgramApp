
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import 'package:JprogramApp/view/login/login.dart';
import 'package:JprogramApp/view/signup/components/background.dart';
//import 'package:JprogramApp/view/signup/components/or_divider.dart';
//import 'package:JprogramApp/view/signup/components/social_icon.dart';

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

            //SizedBox(height: size.height * 0.03),
            
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.25,
            ),

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
              
              press: () {

                showDialog(
                  context: context,
                  
                  child:  CupertinoAlertDialog(
                    
                    title: Text("Do you confirm?"),
                    
                    actions: <Widget>[
                      
                      CupertinoDialogAction(
                          
                          textStyle: TextStyle(color: Colors.red),
                          isDefaultAction: true,

                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("NO")
                      ),
                      
                      CupertinoDialogAction(
                        
                        isDefaultAction: true,
                          
                          onPressed: () async {
                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                          child: Text("YES")
                      ),
                    ],
                  )
                );                


              },
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
            
          /*
            Commented because I'm thinking if I implement using .svg or not.

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
            ),
            SizedBox(height: size.height * 0.03),

          */

          ],
        ),
      ),
    );
  }
}