import 'package:Cara_ou_Coroa/Jogar.dart';
import 'package:flutter/material.dart';


class Exibir extends StatefulWidget {

  String valor;


  Exibir(this.valor);


  @override
  _ExibirState createState() => _ExibirState();
}



class _ExibirState extends State<Exibir> {
  


  @override
  Widget build(BuildContext context) {

    var caminhoimagem= "images/moeda_cara.png";
    if(widget.valor=="cara"){
      caminhoimagem= "images/moeda_cara.png";


    }else{
      caminhoimagem= "images/moeda_coroa.png";



    }









    return Scaffold(
      backgroundColor: Color(0xff61bd86),

    body: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
                
         children: <Widget>[
     
              
        Image.asset(caminhoimagem), 

        GestureDetector(
          onTap:(){
            Navigator.pop(context);



          },
        

          child: Image.asset("images/botao_voltar.png"),
          
          
          
        ),
    




      ],),




    ),



    );
      
    
  }
}