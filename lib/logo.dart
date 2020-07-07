import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  
  final String texto;

  Logo(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //width: double.infinity,
      
     margin: EdgeInsets.symmetric(vertical: 20.0),
      
      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            

                            child: Image.asset(
                            'assets/images/logo.jpg',
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height-500,
                          ),)
                        ),
    );
  }
}