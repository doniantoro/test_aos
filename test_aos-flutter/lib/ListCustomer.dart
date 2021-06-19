import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async'; 
import 'dart:convert';

import 'dart:convert' as convert;

class ListCustomer extends StatefulWidget {
  const ListCustomer({Key? key}) : super(key: key);

  @override
  _ListCustomerState createState() => _ListCustomerState();
}

class _ListCustomerState extends State<ListCustomer> {
  List<String> Test = [
    "apa",
    "kepo",
    "kepo",
  ];

  var url = 'http://127.0.0.1:8000';
   late List data ;
  
//     Future<String> getData() async {

//     // var res = await http.get(Uri.encodeComponent(url),
//     //         headers:{'accept':'application/json'});

//             var url = Uri.parse('http://127.0.0.1:8000/api/list_customer');
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});

    
//     // var res = await http.get(Uri.encodeFull('url'), headers: { 'accept':'application/json' });

//     setState(() {
//       // var response = json.decode(res.body);
//       // data = response['result'];

//       print('kepo');

//     });

//     // print(await http.read("http://127.0.0.1:8000/api/list_customer"));
//     return 'succes';

//   }



  Future<String> getData() async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.http('localhost:8000', '/api/list_customer');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return 'succes';
}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List CUstomer"),
      ),
      body: ListView.builder(
        itemCount: Test.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Column(children: [
            ListTile(
              leading: Text('${Test[index]}'),
            )
          ]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getData,
        // (){
        //   print('kepo');
          
        // },
        
        child: Icon(Icons.add),
      ),
    );
  }
}
