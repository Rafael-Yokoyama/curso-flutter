

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text ("Jokenpo"),

    
      ) ,
      body:Column( 
        crossAxisAlignment:CrossAxisAlignment.center,

        children:<Widget>[
        // text
        //imagem
        //text resultado 
        //linha 3 imagens 
        Padding(
          padding: EdgeInsets.only(top: 20,bottom: 30),
          child:Text("escolha do app",
          textAlign: TextAlign.center,
          style: TextStyle( 
            fontSize: 20,
            fontWeight:FontWeight.bold
            
         
          ),
          ) ,
        ),
      Image.asset("image/padrao.png"),
      Padding(
          padding: EdgeInsets.only(top: 20,bottom: 30),
          child:Text(
            "Escolha uma opção abaixo",
          textAlign: TextAlign.center,
          style: TextStyle( 
            fontSize: 20,
            fontWeight:FontWeight.bold
            
         
          ),
          ) ,
        ),
      Row(children: <Widget>[
        Image.asset("image/pedra.png",height: 50,),
        Image.asset("image/papel.png",height: 50,),
        Image.asset("image/tesoura.png",height:50,), 

      ],)
          
        ]
      ),
      
    );
  }
}