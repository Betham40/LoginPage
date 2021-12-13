import 'package:flutter/material.dart';
import 'package:loginapp/loginpage_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electrical Hub",
        style:  TextStyle(
          fontSize: 25,
          color: Colors.blue
        ),
        ),
        backgroundColor: Colors.amberAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () {
               Navigator.pop(context, MaterialPageRoute(builder: (context) 
                {
                  return const LoginPage();
                }));
            }, 
            style: TextButton.styleFrom(backgroundColor: Colors.blue, fixedSize: const Size(5, 2),),
            child: const Text("Logout", 
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
         Card(
           clipBehavior: Clip.antiAlias,
           child: Column(
             children:[
               ListTile(
                 tileColor: Colors.blueAccent,
                 leading: const Icon(Icons.arrow_drop_down_circle),
                 title: const Text("Card title 1"),
                 subtitle: Text("Secondary text", style: TextStyle( color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Bam Electrical is at your service',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               ButtonBar(
                 alignment: MainAxisAlignment.start,
                 children: [
                   // ignore: deprecated_member_use
                   FlatButton(onPressed: () {},
                   color: Colors.cyanAccent,
                    child: const Text('Action 1'),
                   ),
                    // ignore: deprecated_member_use
                    FlatButton(onPressed: () {},
                   color: Colors.cyanAccent,
                    child: const Text('Action 2'),
                   ),
                 ],
                 ),
                 Image.network('https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHRlY2hub2xvZ3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
             ]
           ),
         ),
         Card(
           clipBehavior: Clip.antiAlias,
           child: Column(
             children:[
               ListTile(
                 leading: const Icon(Icons.arrow_drop_down_circle),
                 title: const Text("Card title 1"),
                 subtitle: Text("Secondary text", style: TextStyle( color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Bam Electrical is at your service',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               ButtonBar(
                 alignment: MainAxisAlignment.start,
                 children: [
                    // ignore: deprecated_member_use
                    FlatButton(onPressed: () {},
                   color: Colors.redAccent,
                    child: const Text('Action 1'),
                   ),
                   // ignore: deprecated_member_use
                   FlatButton(onPressed: () {}, 
                   color: Colors.redAccent,
                   child: const Text('Action 2'),
                   ),
                 ],
                 ),
                 Image.network('https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODR8fHRlY2hub2xvZ3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
             ]
           ),
         ),
        ] )
      
    );
  }
}

