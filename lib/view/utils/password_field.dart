import 'package:flutter/material.dart';
import './text_field.dart';

class RoundedPasswordField extends StatelessWidget {
  
  final ValueChanged<String> onChanged;
  
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return TextFieldContainer(
      
      child: TextField(
        
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.blue[50],
        
        decoration: InputDecoration(
          
          hintText: "Password",
          
          icon: Icon(
            Icons.lock,
            color: Colors.blue[50],
          ),
          
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.blue[50],
          ),
          
          border: InputBorder.none,
        ),
      ),
    );
  }
}