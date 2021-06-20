import 'package:flutter/material.dart';

class CustomerDetail extends StatelessWidget {
  String name = "";
  String phone = "";
  String address = "";
   CustomerDetail({ Key? key, required this.name,required this.phone,required this.address}) : super(key: key);



    
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Detail Customer"),
      ),
      body: Container(
          child: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10, top: 30, bottom: 5),
            child: Text("Name"),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              enabled: false,
              initialValue: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
                // icon: Icon(Icons.clear),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10, top: 30, bottom: 5),
            child: Text("Phone Number"),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              enabled: false,
              initialValue: phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10, top: 30, bottom: 5),
            child: Text("Enter Your Address"),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              enabled: false,
              initialValue: address,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}