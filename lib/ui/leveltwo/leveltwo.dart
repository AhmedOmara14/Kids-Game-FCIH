import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audio_cache.dart';


class leveltwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter paint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHomePage> {

  static AudioCache player  = AudioCache();

  bool accepted1 = false;
  bool accepted2 = false;
  bool accepted3 = false;
  bool accepted4 = false;
  bool accepted5 = false;

  @override
  Widget build(BuildContext context) {

    Widget first  = Container(width: 50, height: 50, child: Text('أ', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black,),),);
    Widget second = Container(width: 50, height: 50, child: Text('ب', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black,),),);
    Widget third  = Container(width: 50, height: 50, child: Text('ت', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black,),),);
    Widget fourth = Container(width: 50, height: 50, child: Text('د', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black,),),);
    Widget fifth  = Container(width: 50, height: 50, child: Text('ى', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black,),),);

    Widget draggableStatusFirst =
    Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
      width: 50,
      height: 50,
      decoration: BoxDecoration(

        gradient:
        LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff30bac5),
            Color(0xff30b1c0),
            Color(0xff319ab4),
            Color(0xff3191af),
            Color(0xff3176a1),
            Color(0xff32699a),
            Color(0xff325a92),
            Color(0xff324888),
            Color(0xff32327d),
            Color(0xff331e72),
          ],
          stops: [
            0.05, 0.1, 0.2, 0.3, 0.5, 0.55, 0.6, 0.8, 0.9, 1
          ],
        ),
      ),
      // color: Colors.blueAccent,
      child: accepted1==true
          ? Center(
        child:first,
      ):Container(),    // if true have centered child else empty container
    );


    Widget draggableStatusSecond =
    Container(
        width: 50,
        height: 50,
      padding: EdgeInsets.fromLTRB(14, 0, 0, 2),

      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:   Alignment.bottomLeft,
            colors: [
              Color(0xff30bac5),
              Color(0xff30b1c0),
              Color(0xff319ab4),
              Color(0xff3191af),
              Color(0xff3176a1),
              Color(0xff32699a),
              Color(0xff325a92),
              Color(0xff324888),
              Color(0xff32327d),
              Color(0xff331e72),
            ],
            stops: [
              0.05, 0.1, 0.2, 0.3, 0.5, 0.55, 0.6, 0.8, 0.9, 1
            ],
          ),
        ),
        // color: Colors.blueAccent,
        child: accepted2==true? Center(child:second):Container(),    // if true have centered child else empty container
      );

    Widget draggableStatusthird =
    Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.fromLTRB(14, 0, 0, 2),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff30bac5),
            Color(0xff30b1c0),
            Color(0xff319ab4),
            Color(0xff3191af),
            Color(0xff3176a1),
            Color(0xff32699a),
            Color(0xff325a92),
            Color(0xff324888),
            Color(0xff32327d),
            Color(0xff331e72),
          ],
          stops: [
            0.05, 0.1, 0.2, 0.3, 0.5, 0.55, 0.6, 0.8, 0.9, 1
          ],
        ),
      ),
      // color: Colors.blueAccent,
      child: accepted3==true? Center(child:third):Container(),    // if true have centered child else empty container
    );

    Widget draggableStatusfourth =
    Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.fromLTRB(18, 0, 0, 2),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff30bac5),
            Color(0xff30b1c0),
            Color(0xff319ab4),
            Color(0xff3191af),
            Color(0xff3176a1),
            Color(0xff32699a),
            Color(0xff325a92),
            Color(0xff324888),
            Color(0xff32327d),
            Color(0xff331e72),
          ],
          stops: [
            0.05, 0.1, 0.2, 0.3, 0.5, 0.55, 0.6, 0.8, 0.9, 1
          ],
        ),
      ),
      // color: Colors.blueAccent,
      child: accepted4==true? Center(child:fourth):Container(),    // if true have centered child else empty container
    );

    Widget draggableStatusfifth =
    Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.fromLTRB(14, 0, 5, 10),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff30bac5),
            Color(0xff30b1c0),
            Color(0xff319ab4),
            Color(0xff3191af),
            Color(0xff3176a1),
            Color(0xff32699a),
            Color(0xff325a92),
            Color(0xff324888),
            Color(0xff32327d),
            Color(0xff331e72),
          ],
          stops: [
            0.05, 0.1, 0.2, 0.3, 0.5, 0.55, 0.6, 0.8, 0.9, 1
          ],
        ),
      ),
      // color: Colors.blueAccent,
      child: accepted5==true? Center(child:fifth):Container(),    // if true have centered child else empty container
    );

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Arabic Game'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/2-final.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 40.0, 20.0, 10.0),  // left, top, right, bottom
          child: Row(
            children: [
              Expanded(
                flex: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'NAME',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      'Player Name',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text(
                      'CURRENT LEVEL',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),   // inside the container
                        margin:  EdgeInsets.fromLTRB(12.0, 5.0, 0.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('Images/lion.png'),
                              radius: 100.0,
                            ),
                            Container(
                              margin:  EdgeInsets.fromLTRB(30.0, 2.0, 0.0, 35.0),   // left, top, right, bottom
                              child: IconButton(
                                onPressed: () {
                                  print('you clicked me');
                                  //player.play('اسد.mp3');
                                  final player = AudioCache() ;
                                  player.play('assadd.mp3');
                                },
                                icon: Icon(
                                  Icons.speaker_phone,
                                ),
                                color: Colors.white,
                                iconSize: 50,
                              ),
                            ),
                          ],  // Children
                        ),
                      ),
                    ),
                    SizedBox(height:40,),
                    Container(
                      margin:  EdgeInsets.fromLTRB(1.0, 0.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          DragTarget(
                            builder: (Context, data, rejectedData){
                              return draggableStatusfifth;
                            },
                            onWillAccept: (data){
                              return true;
                            },
                            onAccept: (data){
                              setState((){
                                accepted5 = true;
                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                          DragTarget(
                            builder: (Context, data, rejectedData){
                              return draggableStatusfourth;
                            },
                            onWillAccept: (data){
                              return true;
                            },
                            onAccept: (data){
                              setState((){
                                accepted4 = true;
                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                          DragTarget(
                            builder: (Context, data, rejectedData){
                              return draggableStatusthird;
                            },
                            onWillAccept: (data){
                              return true;
                            },
                            onAccept: (data){
                              setState((){
                                accepted3 = true;
                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                          DragTarget(
                            builder: (Context, data, rejectedData){
                              return draggableStatusSecond;
                            },
                            onWillAccept: (data){
                              return true;
                            },
                            onAccept: (data){
                              setState((){
                                accepted2 = true;
                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                          DragTarget(
                            builder: (Context, data, rejectedData){
                              return draggableStatusFirst;
                            },
                            onWillAccept: (data){
                              return true;
                            },
                            onAccept: (data){
                              setState((){
                                accepted1 = true;
                              });
                            },
                          ),
                          SizedBox(width: 5.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    accepted1 == true
                        ? Container()
                        : Draggable(
                      feedback: first,
                      child: first,
                      childWhenDragging: Container(),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    accepted2 == true
                        ? Container()
                        : Draggable(
                      feedback: second,
                      child: second,
                      childWhenDragging: Container(),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    accepted3 == true
                        ? Container()
                        : Draggable(
                      feedback: third,
                      child: third,
                      childWhenDragging: Container(),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    accepted4 == true
                        ? Container()
                        : Draggable(
                      feedback: fourth,
                      child: fourth,
                      childWhenDragging: Container(),
                    ),
                    ////////////////////////////////////////////////////////////////////////
                    accepted5 == true
                        ? Container()
                        : Draggable(
                      feedback: fifth,
                      child: fifth,
                      childWhenDragging: Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}