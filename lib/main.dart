import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello World",
      home:new HomePage(),
    );
  }
}




/*
/////////////// STATELESS WIDGET /////////////////////

}class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello World",
      home: new Scaffold(
        // Provides the app structure
        appBar: new AppBar(
          title: new Text("Home Page")
        ),
        body: new Center(child: new Text("Hello Nandy")),
      )
    );
  }

/////////////// STATE FULL //////////////////////////

*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}





class _HomePageState extends State<HomePage> {

  String myText = "Hello World";

  void _changeText(){
    setState((){
      if(myText.startsWith("H")){
        myText = "My World";
      } else {
        myText = "Hello World";
      }
      
    });
  }

  Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(myText, style: new TextStyle(
            fontSize: 22.0
          ),),
          new RaisedButton(child: new Text("Click"),
          onPressed: _changeText,
          color: Colors.red,
          textColor: Colors.white,
          )
        ],
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}



