import 'package:flutter/material.dart';
import 'Xylophone.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: Page(),
    );
  }
}
class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(270, 0, 100, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome  Back :)",style: TextStyle(color: Colors.orange.shade800,fontSize: 30,fontWeight: FontWeight.bold),),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed: (){}, child: const Text("     Piano    ")),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {return Xylophone();}));}, child: const Text("Xylophone")),
          ],
        ),
      ),
    );
  }
}
