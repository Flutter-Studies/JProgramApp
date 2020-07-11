import 'package:flutter/material.dart';
import './text_field.dart';

class RoundedInputField extends StatelessWidget {
  
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return TextFieldContainer(
      
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue[50],
        
        decoration: InputDecoration(
          
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          
          hintText: hintText,
          border: InputBorder.none,
        ),

      ),
    );
  }
}