import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _Frases =[ 
    "A leitura de um bom livro é um diálogo incessante: o livro fala e a alma responde",
    "É nas pequenas coisas da vida que encontro motivação para seguir lutando",
    "Em Deus encontro força, paz e a certeza que nunca estou só",
    "Reconheça seus limites, mas nunca duvidando das suas capacidades"
  ];
  var _FraseGerada = "Clique abaixo para gerar uma frase";


  void _gerarFrase(){
    var NumeroSorteado= Random().nextInt(_Frases.length);

    setState(() {

      _FraseGerada=_Frases[NumeroSorteado];

    } 
      
      
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia" ,
        style:TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.bold
               ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(3
        ),
        width: double.infinity,
        height:double.infinity,
        decoration: BoxDecoration(
        
         border: Border.all(width: 20, color: Colors.blueAccent)
        ),
        child: SingleChildScrollView(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
         children:  
         <Widget>[
           Image.asset( 
             "image/Foto.png"),
      
           SizedBox( 
             height: 40,
           ), 
           Text(
            _FraseGerada,
           textAlign: TextAlign.justify,
           style: TextStyle(
             fontSize: 17,
             fontStyle: FontStyle.italic,
             color: Colors.black87,
           ),
           ),
           SizedBox(height:50 
           ),
           RaisedButton(
            onPressed:_gerarFrase,
             child: Text(
               "Nova Frase",
  
                style:TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.bold
               ),
               ),
             color: Colors.lightBlueAccent,
            
           )

         ],
      ), 
      ),
        ),
    );
  } 
 }


