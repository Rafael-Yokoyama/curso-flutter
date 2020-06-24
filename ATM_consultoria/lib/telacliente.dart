import 'package:flutter/material.dart';

class telacliente extends StatefulWidget {
  @override
  _telaclienteState createState() => _telaclienteState();
}

class _telaclienteState extends State<telacliente> {
  @override
  Widget build(BuildContext context) {

        
      return   Scaffold(
      appBar: AppBar(
        title: Text("Cliente"),
        backgroundColor: Colors.green,


      ),
      body:Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Row( 
              children: <Widget>[

                Image.asset("images/detalhe_cliente.png"),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    
                    "Clientes",
                  style: TextStyle(

                    fontSize: 20,

                   
                   
                  



                  ),
                    
                    
                    
                    )
                  
                  
                  
                  
                  
                  ),
                  

                





              ],

            

            ),
            Padding
            (padding: EdgeInsets.only(top :16),

            child: Image.asset("images/cliente1.png"),
            
            
            ),
            Text("Empresa de Software "),
            Padding
            (padding: EdgeInsets.only(top :16),

            child: Image.asset("images/cliente2.png"),
            
            
            ),
            Text("Empresa de Auditoria "),


            
            





          ],),

        






      ) ,
      
    );
  }
}