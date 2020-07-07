import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  
  final String name;
  final Object resposta;
  final IconData icone;

  OptionButton(this.name, this.resposta, this.icone);

  @override
  Widget build(BuildContext context) {
    
    return Container( 

      margin: EdgeInsets.all(15.0),

      child: ButtonTheme(
        
        minWidth: 150.0,
        height: 50.0,
        
        child: RaisedButton(
          
          textColor: Colors.white,
          color: Colors.blue,        
          
          child: Row( 
          
            children: <Widget>[
              
              Icon(
                this.icone,
                color: Colors.white,
              ),

              Center(
                child: Text(
                  
                  this.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 20
                  ),
                  
                ),
              ),
            ],
          ),
          onPressed: () => print(this.resposta),

        ),
      ),
    );
  }
}