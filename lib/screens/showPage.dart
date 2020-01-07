import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
  final String valueFromHomePage,valueFromHomePage2;
  ShowPage({Key key,this.valueFromHomePage,this.valueFromHomePage2}):super(key:key);
  //final String valueFromHomePage2;
  
  
  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  Widget email(){
    return Text("${widget.valueFromHomePage}");
  }
  Widget pass(){
    return Text("${widget.valueFromHomePage2}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Profile"),
    ),
    //body: Text("${widget.valueFromHomePage}"),
    body: SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[email(),pass()],
          ),
        ),
      ),
    )
    );
  }
}
