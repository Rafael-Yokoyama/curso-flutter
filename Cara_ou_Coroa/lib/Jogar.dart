
import 'package:Cara_ou_Coroa/Exibir.dart';
import 'package:flutter/material.dart';
import 'dart:math';



class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _Resultado(){

    var itens = ["cara","coroa"];
    var numero = Random().nextInt(2);
    var exibir = itens[numero];


    Navigator.push(context,
    MaterialPageRoute(builder: (contex) => Exibir(exibir) ));




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