import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_aos/test.dart';
import 'dart:async'; 
import 'dart:convert';
import 'CustomerDetail.dart';

import 'InputCustomer.dart';

// import 'dart:convert' as convert;

// import 'package:http/http.dart';

class ListCustomer extends StatefulWidget {
  const ListCustomer({Key? key}) : super(key: key);

  @override
  _ListCustomerState createState() => _ListCustomerState();
}

class _ListCustomerState extends State<ListCustomer> {

  List<dynamic> data=[];
  
    Future<String> getData() async {

  final url = Uri.parse('https://aos.doniantoro.tech/api/list_customer');
  
 var response = await http.get(url, headers: {'Accept': 'application/json'});


    setState(() {

  
    var content = json.decode(response.body);
    data=content;
    
    });

    return 'succes';

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Customer"),
      ),
      body: ListView.builder(
        itemCount:data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Column(children: [
            ListTile(
              leading: Text('${data[index]['name']}'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>CustomerDetail(name:'${data[index]['name']}',phone:'${data[index]['phone']}',address:'${data[index]['address']}')));
              },
            )
          ]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){ Navigator.push(
          context,MaterialPageRoute(builder: (context)=>InputCustomer())
          );
        },
        
        child: Icon(Icons.add),
      ),
    );
  }
  @override
void initState() {
    super.initState();
    this.getData(); //PANGGIL FUNGSI YANG TELAH DIBUAT SEBELUMNYA
}
}
