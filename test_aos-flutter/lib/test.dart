import 'package:flutter/material.dart';



class Test3 extends StatelessWidget {
  String name ="";
  
   Test3({ Key? key , required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(title: Text("ini"),),
      body: Text(name),
      
    );
  }
}


class Test2 extends StatefulWidget {

 String name ="";
   Test2({ Key? key, required this.name}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar(title: Text("ini"),),
      body: Text("d"),
      
    );
  }
}