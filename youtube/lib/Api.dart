import 'package:http/http.dart' as  http;
import 'dart:convert';

import 'Model/Video.dart';


const CHAVE_YOUTUBE_API = "AIzaSyAkMMo3terz7SgfWj7DZJC5rtFrMXgGhAk";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api{
  pesquisar(String pesquisa)async{

    http.Response response = await http.get( 
     URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
    ); 
    

    if( response.statusCode == 200 ){


      Map<String, dynamic> dadosJson = json.decode( response.body );

      List<Video> videos =dadosJson["items"].map<Video>(
        (map){
          return Video.fromJson(map);


        }


      ).toList();
      for( var video in videos ){
        print("resultado: " + video.titulo );
      }


      //print("resultado: " + dadosJson["items"][2]["snippet"]["title"].toString() );

    }else{

    }

  }

}

      
    

    
    
    
    


  



