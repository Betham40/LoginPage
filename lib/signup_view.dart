import 'package:flutter/material.dart';
import 'package:loginapp/homepage_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Create New Account",
         style: TextStyle(color: Colors.yellow,
         fontSize: 20,
         fontWeight: FontWeight.bold
         ),
         )
         ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:60, right: 60, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Enter Name")
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
            child: TextFormField(
              decoration: InputDecoration(
               label: Text("Enter Surname") 
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
            child: TextFormField(
              decoration: InputDecoration(
               label: Text("Enter Email") 
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
            child: TextFormField(
              decoration: InputDecoration(
               label: Text("Enter Password") 
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
            child: TextFormField(
              decoration: InputDecoration(
               label: Text("Confirm Password") 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
            child: TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) 
              {
                return HomePage();
              }));
            },
          style: TextButton.styleFrom(backgroundColor: Colors.blue), 
          child: Text("Sign Up / Login", style: TextStyle(
            color: Colors.yellow, fontSize: 15,
            fontWeight: FontWeight.bold
          ),)
          )
           )
            ],
      ),
    );
  }
}