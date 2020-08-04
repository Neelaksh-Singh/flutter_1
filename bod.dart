import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/ui/cont2.dart';








mybody() {

  
  
  AudioPlayer audioPlayer = AudioPlayer();
  int result;
  play() async {
    result = await audioPlayer.play('https://n1-flutter.s3.ap-south-1.amazonaws.com/song.mp3');
    if ( result == 1) {
      //success
    }
  }
  pause() async {
    result =  await audioPlayer.pause();
  }
  refresh() async { 
    result = await audioPlayer.stop();
  } 
  var cont1 = Container(
    height: 250,
    width: 500,
    decoration: BoxDecoration(
         
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.indigoAccent[100],
              width: 2,
              
            ),
            image: DecorationImage(
              image: NetworkImage('https://i.pinimg.com/originals/7d/c7/68/7dc76882163ea0fa99c62f2f14c7167d.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Imagine " ,
                style: TextStyle(color: Colors.black , fontSize: 30 ),
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.play_arrow , color: Colors.black), onPressed:play),
                   IconButton(icon: Icon(Icons.pause , color: Colors.black), onPressed:pause),
                   IconButton(icon: Icon(Icons.refresh , color: Colors.black), onPressed:refresh ),
            
            
                ],)

              

                
            ],
          ),


               
            
        

  );
  // Main Container
  var x =Container(
    alignment: Alignment.topCenter,
    width: double.infinity ,
    height: double.infinity,
    decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1515694346937-94d85e41e6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                fit: BoxFit.fill,
              ),
    ) ,
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        cont1,
        cont2(),
        

      ],
      
    ),

  );
  
  return x;

}