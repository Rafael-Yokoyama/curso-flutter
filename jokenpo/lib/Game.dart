

import 'package:flutter/material.dart';
import 'dart:math';
  


class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  
  var _imagemApp = AssetImage("image/padrao.png");
  var _mensagem = "Escolha uma opção a baixo";

  void _opcaoselecionada(String escolhadoUsuario){


  var opcoes = ["pedra","papel","tesoura"];
  var num = Random().nextInt(3);
  var escolhaApp = opcoes[num];

  print("Escolha do app " +escolhaApp);
  print(" Escolha do usuario" +escolhadoUsuario);


   switch (escolhaApp) {
     case "pedra":
     setState(() {
       this._imagemApp = AssetImage("image/pedra.png");
       
     });
       
       break;

       case "papel":
     setState(() {
       this._imagemApp = AssetImage("image/papel.png");
       
     });
       
       break;
       case "tesoura":
     setState(() {
       this._imagemApp = AssetImage("image/tesoura.png");
       " tesoura";
       
     });
       
       break;
    
   }
      // validção do ganhador 
      // usuario ganhador 
      if(

        (escolhadoUsuario == "pedra"  && escolhaApp == "tesoura")   || 
        (escolhadoUsuario == "tesoura"  && escolhaApp == "papel")   ||
        (escolhadoUsuario == "papel"  && escolhaApp == "pedra") 
        
        
      //app ganhador 
      ) {
        setState(() {
          this._mensagem = "Parabéns!!!   Você venceu ";
          
        });
      
      
     

      }else if(
        (escolhaApp == "pedra"  && escolhadoUsuario == "tesoura")    || 
        (escolhaApp == "tesoura"  && escolhadoUsuario == "papel")    ||
        (escolhaApp == "papel"  && escolhadoUsuario == "pedra") 
        




      ){

        setState(() {
          this._mensagem = "  Você perdeu ;/";
          
        });
      

      }else {

        setState(() {
          this._mensagem = "  Você empatou ;] ";
          
        });
      }
  
       
      





  }

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

      Image(image: this._imagemApp,),
      Padding(
          padding: EdgeInsets.only(top: 20,bottom: 30),
          child:Text(
            this._mensagem,
          textAlign: TextAlign.center,
          style: TextStyle( 
            fontSize: 20,
            fontWeight:FontWeight.bold
            
         
          ),
          ) ,
        ),
      Row(children: <Widget>[
        GestureDetector(
          onTap:() => _opcaoselecionada("pedra"),
          child:Image.asset("image/pedra.png",height: 50,) ,
        ),
        GestureDetector(
          onTap:() => _opcaoselecionada("papel"),
          child:Image.asset("image/papel.png",height: 50,) ,

        ),
        GestureDetector(
          onTap:() => _opcaoselecionada("tesoura"),
          child:Image.asset("image/tesoura.png",height: 50,) ,
        ),
        
        

      ],)
          
        ]
      ),
      
    );
  }
}