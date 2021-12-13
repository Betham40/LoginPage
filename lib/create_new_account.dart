import 'package:flutter/material.dart';
import 'package:loginapp/homepage_view.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
                    children:  [
                    const  ListTile(
                        title: Center(
                          child: Text('Create New Account',
                          style: TextStyle(color: Colors.amberAccent),
                          ),
                        ),
                        tileColor: Colors.lightBlue,
                      ),
                      Wrap(
                         children:[ Padding(
                           padding: const EdgeInsets.only(top:8.0, left: 60, right: 60),
                           child: TextFormField(
                             decoration: const InputDecoration(
                               label: Text("Enter Name")
                             ),
                           ),
                         ),
                          Padding(
            padding: const EdgeInsets.only(left:60, right: 60, top: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Enter Surname")
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left:60, right: 60, top: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Enter Password")
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left:60, right: 60, top: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Confirm Password")
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              }, 
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: Text("Signup/Login", style: TextStyle(color: Colors.amberAccent),)),
            ),
          )
        ]
      ),
    ],
   ),
    );
  }
}