import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCustomer extends StatefulWidget {
  const InputCustomer({Key? key}) : super(key: key);

  @override
  _InputCustomerState createState() => _InputCustomerState();
}

class _InputCustomerState extends State<InputCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Customer"),
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Phone Number',
                // icon: Icon(Icons.clear),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:20,right:20,top:20),
             
                      child: SizedBox(
             
              child: ElevatedButton(
                
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff3498DB))),
                  onPressed: null,
                  child: Text("Save", style: TextStyle(color: Colors.white))),
            ),
          )
        ],
      )),
    );
  }
}

class color {}
