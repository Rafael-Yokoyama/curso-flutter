
import 'package:flutter/material.dart';



class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _Resultado(){


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),

    body: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
                
         children: <Widget>[
     
              
        Image.asset("images/logo.png"), 

        GestureDetector(
          onTap:_Resultado ,

          child: Image.asset("images/botao_jogar.png"),
          
          
          
        ),
    




      ],),




    ),



    );
      
    
  }
}