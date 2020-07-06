import 'package:flutter/material.dart';
import 'package:youtube/pasta/Biblioteca.dart';
import 'package:youtube/pasta/EmAlta.dart';
import 'package:youtube/pasta/Inicio.dart';
import 'package:youtube/pasta/Inscricao.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int  _indiceAtual = 0 ;


  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [

      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
   


    ];


    
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color:Colors.black,
          opacity:0.9
          
        ),
        
        backgroundColor: Colors.white,
        title: Image.asset("images/youtube.png",
        width: 98,
        height: 22,

        
        
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam), 
            onPressed: (){
              print("acao: videocam");

            }
                                   
                    
            ),
            IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){
              print("acao: pesquisa");

            }
                                                        
            ),
            IconButton(
            icon: Icon(Icons.account_circle), 
            onPressed: (){
              print("acao: conta");

            }
                                                            
            )





        ],





      ) ,
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _indiceAtual ,
        onTap: (indice){
          setState(() {
             _indiceAtual = indice ;
            
          });



        },

        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            title: Text("Início"),
            icon: Icon(Icons.home),
           ),
            BottomNavigationBarItem(
            title: Text("Em alta"),
            icon: Icon(Icons.whatshot),
           ),
            BottomNavigationBarItem(
            title: Text("Incrições"),
            icon: Icon(Icons.subscriptions),
           ),
            BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(Icons.folder),
           ),
               
               
                              
                          
         




        ]
        
        
        
        ),
        
  



    );
      
    
  }
}




