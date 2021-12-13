import 'package:flutter/material.dart';
import 'package:loginapp/create_new_account.dart';
import 'package:loginapp/homepage_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:loginapp/signup_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login page", style: TextStyle(
            color: Colors.deepPurpleAccent, fontSize: 20, 
          ),
          ),
        ),
        // actions: [Icon(Icons.filter_list, color: Colors.deepPurpleAccent,),
        // Icon(Icons.share, color: Colors.deepPurpleAccent,)
        // ],
      ),
      body: Form(
        child: ListView(
          children: [
          const  Center(
              child: Padding(
                padding: EdgeInsets.only(top:80.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1541562232579-512a21360020?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmFydXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60,),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text("Enter Name", style: TextStyle(color: Colors.lightBlueAccent),),
                ),
              ),
            ),
          const  SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60,),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text("Enter Password", style: TextStyle(color: Colors.lightBlueAccent),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 90, right: 25,),
              child: Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) 
                    {
                      return const HomePage();
                    }));
                  }, 
                  style:TextButton.styleFrom(backgroundColor: Colors.amberAccent),
                  child: 
                const  Text("Login", style: TextStyle(color: Colors.blueAccent, fontSize: 20,))
                  ),
                    Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: TextButton(onPressed: (){
              showBarModalBottomSheet(context: context, builder: (context){
                return CreatePage();
              });
              }, 
              style:TextButton.styleFrom(backgroundColor: Colors.amberAccent),
              child: 
              const Text("Create", 
              style: TextStyle(color: Colors.blueAccent, 
              fontSize: 20,))
              ),
            )
                //  const Padding(
                //     // ignore: unnecessary_const
                //     padding: const EdgeInsets.only(left:8.0),
                //     child: Text("Create Account", textAlign: TextAlign.right,),
                //   ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}