import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


myapp() {

  myt(){
    Fluttertoast.showToast(
        msg: "This is straming !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
    
  }
  var info = Icon(Icons.info_outline);
  var myact = IconButton(icon:info , onPressed: myt);
  var leadmage = Image.network("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");

  var x = AppBar(
    centerTitle: true,
    leading: leadmage,
    title: Text( "MyMusic" ) ,
    actions: <Widget>[myact],
    backgroundColor: Colors.blueGrey[300],
  );

  return x;
}