import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:multimedia/ui/leveltwo/haa2.dart';

haa2 obj = new haa2();

class non extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
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

  //static AudioCache player  = AudioCache();

  bool accepted1 = false;
  bool accepted2 = false;
  bool accepted3 = false;
  final player = AudioCache() ;

  @override
  Widget build(BuildContext context) {

    Widget first  = Container(width: 50, height: 50, decoration: BoxDecoration(
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
    ),child: Center(child: Text('ن', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white,),),),);
    Widget second = Container(width: 50, height: 50, decoration: BoxDecoration(
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
    ),child: Center(child: Text('م', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white,),),),);
    Widget third  = Container(width: 50, height: 50, decoration: BoxDecoration(
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
    ),child: Center(child: Text('ر', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white,),),),);

    Widget draggableStatusFirst =
    Container(
      width: 50,
      height: 50,
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
      child: accepted1==true
          ? Center(
        child:first,
      ):Container(),    // if true have centered child else empty container
    );

    Widget draggableStatusSecond =
    Container(
      width: 50,
      height: 50,
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

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Arabic Game Test'),
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
          padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),  // left, top, right, bottom
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 100.0,),
                    Text(
                      'LEVEL 2',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 3.0,
                        fontSize: 30.0,
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
                              backgroundImage: AssetImage('Images/tiger.png'),
                              radius: 100.0,
                            ),
                            Container(
                              margin:  EdgeInsets.fromLTRB(13.0, 2.0, 0.0, 50.0),   // left, top, right, bottom
                              child: IconButton(
                                onPressed: () {
                                  print('you clicked me');
                                  player.play('نمر.mp3');
                                },
                                icon: Icon(
                                  Icons.speaker_phone,
                                ),
                                color: Colors.cyan[800],
                                iconSize: 70,
                              ),
                            ),
                          ],  // Children
                        ),
                      ),
                    ),
                    SizedBox(height:40,),
                    Container(
                      margin:  EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
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
                    SizedBox(height: 100.0,),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: RaisedButton(
                        color: Colors.green[400],
                        onPressed: (){
                          if(accepted1==true && accepted2 == true && accepted3 == true){
                            player.play('نمر.mp3');
                            Navigator.push(context,
                                MaterialPageRoute(builder:(context)=>obj)) ;
                          }
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 40.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
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