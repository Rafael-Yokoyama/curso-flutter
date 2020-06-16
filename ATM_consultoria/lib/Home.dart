

import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

void _abrirEmpresa(){


}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Atm consultoria "),
        backgroundColor: Colors.green,
      ),
      body:Container(

        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top : 20) ,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_empresa.png"),

                  ),
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_servico.png"),

                  ),
                 
            

                ],


              ),
             
      
            
              ),
              Padding(
              padding: EdgeInsets.only(top : 20) ,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_cliente.png"),

                  ),
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_contato.png"),

                  ),
                 
                

                ],


             ),
             
        
            
              )


          ],),
        

      ) ,
      
    );
  }
}

