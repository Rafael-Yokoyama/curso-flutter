import 'package:flutter/material.dart';



class texto extends StatefulWidget {
  @override
  _textoState createState() => _textoState();
}

class _textoState extends State<texto> {

  TextEditingController _controlleralcool = TextEditingController ();
  TextEditingController _controllergasolina = TextEditingController ();
  String _textoresultado ="";

   void _Calcular() {
     double precoAlcool     = double.tryParse(_controlleralcool.text  ) ;
      double precoGasolina    = double.tryParse(_controllergasolina.text  ) ;


     if( precoAlcool == null || precoGasolina == null){

       setState(() {

               _textoresultado = "Número inválido,digite números maiores que 0 e utilizando (.)" ;
         
       });
      

     }else {

       if( (precoAlcool / precoGasolina) >= 0.7){
         setState(() {
           _textoresultado = "Melhor abastecer com Gasolina";


           
         });
         

       }else{
         _textoresultado ="Melhor abastecer com Álcool";

       }
       
     }
     
   }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Álcool ou Gasolina "),
        

    

      ) ,
      body: Container(
       
        child:SingleChildScrollView(
           padding:EdgeInsets.all(30) ,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:40),
              child:Image.asset("imagens/logo.png" ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom:25),
              child: Text("Saiba qual é a melhor opção para o abastecimento do seu carro ",
              style: TextStyle(
                fontSize : 20 ,
                fontWeight: FontWeight.bold 

              ),
              
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText:" Preço Álcool, ex 1.59"
                
        
              ),
              style: TextStyle(
                  fontSize: 22),
              
              controller: _controlleralcool,
              

            ),
                         

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText:" Preço gasolina, ex 3.59"  

                            
              ),
              style: TextStyle(
                  fontSize: 22),
              
              controller: _controllergasolina,


            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(20),
                child: Text("CALCULAR ",
                style: TextStyle(

                  fontSize : 20 ,

                  
                ),
                
                ),

                onPressed: _Calcular

             
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top:20),
            child: Text(

                _textoresultado,
                style: TextStyle(
                  fontSize : 22,
                  fontWeight : FontWeight.bold
                ),
              ),
            
                                       
              )
                      

          ],),
          

        ),
          
         
      ),
      
     
    );

      }        
    
}