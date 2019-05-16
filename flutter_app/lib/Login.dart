import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=> new _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Travel Memoir"),
      ),
      body: Form(child: Container(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              validator: (input){
                if(input.isEmpty){
                  return "Please type an email";
                }
              },
              onSaved:(input)=> email = input ,
              decoration: InputDecoration(labelText: "Email"),
            ),TextFormField(
              validator: (input){
                if(input.isEmpty){
                  return "Please type a password";
                }
              },
              onSaved:(input)=> password = input ,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            new Padding (
              padding: const EdgeInsets.only(top:20.0),
            ),
            new MaterialButton(
              color:Colors.red,
              textColor: Colors.white,
              onPressed:(){},
              child:Text("Sign In"),
            ),new Padding(padding: const EdgeInsets.only(top:20.0)),
            new FlatButton(onPressed:(){}, child: Text("New User? Register here."))
          ],
        ),
      )),
    );
  }

}