import 'package:flutter/material.dart';

class telaservico extends StatefulWidget {
  @override
  _telaservicoState createState() => _telaservicoState();
}

class _telaservicoState extends State<telaservico> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,


      ),
      body:SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: <Widget>[

            Row( 
              children: <Widget>[

                Image.asset("images/detalhe_servico.png"),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    
                    "Serviços",
                  style: TextStyle(

                    fontSize: 20,

                   
                   
                  



                  ),
                    
                    
                    
                    )
                  
                  
                  
                  
                  
                  ),
                  

                





              ],

            

            ),
            Padding(
              padding:EdgeInsets.only(top:16),
              child: Text("Consultoria",
              
              
              
              
              ),
              
              
              
              ),

              Padding(
              padding:EdgeInsets.only(top:16),
              child: Text("Calculo de preços"),
              
              
              
              ),
               Padding(
              padding:EdgeInsets.only(top:16),
              child: Text("Acompanhamento de projetos"),
              
              
              
              )


            
            





          ],),

        






      ) ,
      
        



      ),
    );
    
      
    
  }
}