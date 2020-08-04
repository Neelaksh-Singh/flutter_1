import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


cont2()
{
 
  String videoUrl = "https://youtu.be/iqoNoU-rm14";
  YoutubePlayerController _controller;

  _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl));


  var mybody = Container(
    alignment: Alignment.center,
    height: 200,
    width: 300,
    color: Colors.yellow[300],
    margin: EdgeInsets.all(20),
  

  child: Column(mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    
    Container(
      height: 200,
      width: 300,
     child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
      
    )    
    
  ],),

  );
  return mybody;
}