import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3498DB),
      body: Center(
        // alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(children: [
            new Image.asset('assets/profile.png', width: 100.0, height: 100.0),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Text("Username"),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                  // icon: Icon(Icons.clear),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10, top: 30, bottom: 5),
              child: Text("Password"),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                  // icon: Icon(Icons.clear),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xff3498DB),
                    )),
                    onPressed: null,
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffEBF5FB)),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
