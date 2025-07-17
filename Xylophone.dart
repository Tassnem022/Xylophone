import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          actions:  [
            Container(margin:EdgeInsets.fromLTRB(0, 0, 10, 0) ,child: Icon(Icons.headphones)),
            Container(margin: EdgeInsets.fromLTRB(0, 0, 2, 0), child: Icon(Icons.settings)),
          ]

      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(5) ,
        child:  Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  MyContainer([Colors.deepPurple.shade400,Colors.deepPurple.shade300],285,['C','DO','1'],38,'sounds/note1.mp3'), //1
                  MyContainer([Colors.lightBlue.shade700,Colors.lightBlue.shade500],270,['D','RE','2'],36,'sounds/note2.mp3'), //2
                  MyContainer([Colors.blue.shade500,Colors.blue.shade400],255,['E','MI','3'],34,'sounds/note3.mp3'), //3
                  MyContainer([Colors.teal.shade300,Colors.teal.shade200],240,['F','FA','4'],32,'sounds/note4.mp3'), //4
                  MyContainer([Colors.lightGreen.shade300,Colors.lightGreen.shade200],225,['G','SOL','5'],30,'sounds/note5.mp3'), //5
                  MyContainer([Colors.lime.shade600,Colors.lime.shade400],210,['A','LA','6'],28,'sounds/note6.mp3'), //6
                  MyContainer([Colors.orange,Colors.amber],195,['B','SI','7'],24,'sounds/note7.mp3'), //7
                  MyContainer([Colors.deepOrangeAccent,Colors.deepOrange.shade300],180,['C','DO','8'],22,'sounds/note1.mp3'), //8
                  MyContainer([Colors.brown.shade500,Colors.brown.shade300],165,['D','RE','9'],20,'sounds/note2.mp3'), //9
                  MyContainer([Colors.pink.shade400,Colors.pink.shade300],150,['E','MI','10'],18,'sounds/note3.mp3')  //10

                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
//google fonts to get icon

}

class MyContainer extends StatelessWidget {
  MyContainer(this.colors,this.height, this.text,this.margin,this.sound,{super.key});
  List<Color> colors ;
  double height ;
  List<String> text ;
  double margin ;
  String sound ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
       // splashColor: Colors.black,
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(sound));},
        child: Container(
            height: height,
            margin: const EdgeInsets.all(3),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: colors,
                    stops: [0.5,0.5]
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(text[0],style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
                Text(text[1],style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)),
                Text(text[2],style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)),
              ],
            )
        ),
      ),
    );
  }
}
