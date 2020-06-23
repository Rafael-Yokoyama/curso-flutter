import 'package:flutter/material.dart';

class telaempresa extends StatefulWidget {
  @override
  _telaempresaState createState() => _telaempresaState();
}

class _telaempresaState extends State<telaempresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,


      ),
      body:Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[

            Row( 
              children: <Widget>[

                Image.asset("images/detalhe_empresa.png"),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    
                    "Sobre a empresa",
                  style: TextStyle(

                    fontSize: 20,
                   color: Colors.deepOrange 
                  



                  ),
                    
                    
                    
                    )
                  
                  
                  
                  
                  
                  ),
                  

                





              ],

            

            ),

            
            





          ],),

        






      ) ,
      
    );
  }
  }
