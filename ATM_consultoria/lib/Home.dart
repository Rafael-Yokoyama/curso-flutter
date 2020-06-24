








import 'package:ATM_consultoria/telacliente.dart';
import 'package:ATM_consultoria/telacontato.dart';
import 'package:ATM_consultoria/telaempresa.dart';
import 'package:ATM_consultoria/telaservico.dart';
import 'package:flutter/material.dart';







class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

                                 
class _HomeState extends State<Home> {

  void _abrirEmpresa(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> telaempresa() )); 
          

  }
  void _abrirServico(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> telaservico ())); 
          

  }
  void _abrirCliente(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> telacliente() )); 
          

  }
  void _abrirContato(){

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=> telacontato() )); 
          

  }











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
                    onTap: _abrirServico,
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
                    onTap: _abrirCliente,
                    child: Image.asset("images/menu_cliente.png"),

                  ),
                  GestureDetector(
                    onTap: _abrirContato,
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

