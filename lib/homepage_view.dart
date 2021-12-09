

import 'package:flutter/material.dart';
import 'package:loginapp/loginpage_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Electrical Hub",
        style: TextStyle(
          fontSize: 25,
          color: Colors.blue
        ),
        ),
        backgroundColor: Colors.amberAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) 
                {
                  return LoginPage();
                }));
            }, 
            style: TextButton.styleFrom(backgroundColor: Colors.blue, fixedSize: Size(5, 2),),
            child: Text("Logout", 
            style: TextStyle(color: Colors.white, fontSize: 15),)
            ),
          )
        ],
        // actions: [
        //   Icon(Icons.filter_list, color: Colors.cyanAccent,),
        //   Icon(Icons.share, color: Colors.cyanAccent)
        // ],
      ),
      body: ListView(
        children: [
          TabWidget(
            service: "Electronic Servicing",
          ),
          TabWidget(
            service: "Electrical Installation",
          ),
          TabWidget(
            service: "Electrical Wiring"
          ),
          TabWidget(
            service: "Electrical Plan",
          ),
        ],
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key, required this.service,
  }) : super(key: key);
  final String service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
          backgroundImage: NetworkImage("https://media.istockphoto.com/photos/modern-electronics-research-development-facility-black-female-does-picture-id1319077259?b=1&k=20&m=1319077259&s=170667a&w=0&h=2hT5XC7GK5Y2z4ytQCL_0QnZUkoucTGuX0SsHrab_oo="),  
          ),
          title: Text(service,
           style: TextStyle(
             color: Colors.white, 
             fontSize: 25,
             fontWeight: FontWeight.bold,
             ),
             ),
        ),
        color: Colors.blue,
        elevation: 15,
      
      ),
    );
  }
}