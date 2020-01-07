import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String userFromSecondPage,passFromSecondPage,nameFromSecondPage,lastnameFromSecondPage,ageFromSecondPage;
  ThirdPage({Key key,this.userFromSecondPage,this.passFromSecondPage,this.nameFromSecondPage,this.lastnameFromSecondPage,this.ageFromSecondPage}):super(key:key); 
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget email(){
    return Text("User : ${widget.userFromSecondPage}");
  }
  Widget pass(){
    return Text("Password :${widget.passFromSecondPage}");
  }
  Widget name(){
    return Text("Name :${widget.nameFromSecondPage}");
  }
  Widget lastname(){
    return Text("Lastname :${widget.lastnameFromSecondPage}");
  }
  Widget age(){
    return Text("Lastname :${widget.ageFromSecondPage}");
  }

  final String titleString = "ThirdPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(titleString),
    ),
    body: SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[email(),pass(),name(),lastname(),age()],
          ),
        ),
      ),
    )
    );
  }
}