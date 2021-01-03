// paint Class Before run it follow the instructions in instruction text file
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

//void main () =>runApp(paintClass());

class paintClass extends StatelessWidget{
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
class Drawingarea
{
  Offset point ;
  Paint areapaint;
  Drawingarea({this.point,this.areapaint }) ;
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Drawingarea> point = [];
  Color selectColor;
  double strokeWidth;

  @override
  void initState() {
    super.initState();
    selectColor = Colors.black;
    strokeWidth = 2.0;
  }

  void selectColorFn() {
    showDialog(
        context: context,
        child: AlertDialog(
          title: const Text("choose a color"),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: selectColor,
              onColorChanged: (color) {
                this.setState(() {
                  selectColor = color;
                });
              },
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(138, 35, 135,1.0),
                  Color.fromRGBO(233, 64, 78, 1.0),
                  Color.fromRGBO(242, 113, 33, 1.0),
                ])),),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: width *0.8,
                  height: height* 0.8 ,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   boxShadow:[
                     BoxShadow(
                       color: Colors.black.withOpacity(0.4),
                       blurRadius: 5.0,
                       spreadRadius: 1.0,
                     )
                   ]
                 ),
                  child: GestureDetector(
                    onPanDown: (details){
                      this.setState(() {
                        point.add(
                          Drawingarea(
                            point: details.localPosition,
                            areapaint: Paint()
                              ..strokeCap = StrokeCap.round
                              ..isAntiAlias= true
                              ..color = selectColor
                              ..strokeWidth = strokeWidth
                          )
                        );
                      });
                    },
                    onPanUpdate: (details){
                      this.setState(() {
                        point.add(
                            Drawingarea(
                                point: details.localPosition,
                                areapaint: Paint()
                                  ..strokeCap = StrokeCap.round
                                  ..isAntiAlias= true
                                  ..color = selectColor
                                  ..strokeWidth = strokeWidth
                            )
                        );
                      });
                    },
                    onPanEnd: (details){
                      this.setState(() {
                        point.add(null);
                      });
                    },
                    child:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: CustomPaint(
                        painter: MyCustomPainter(points: point, color: selectColor,StrokeWidht: strokeWidth) ,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Row(
                    children:<Widget>[
                      IconButton(icon: Icon(Icons.color_lens,color:selectColor,), onPressed:(){
                        selectColorFn() ;
                      }),
                      Expanded(child: Slider(
                        min: 1.0,  max: 7.0,
                          activeColor: selectColor,
                          value: strokeWidth
                          ,onChanged: (value){
                          this.setState(() {
                            strokeWidth = value;
                          });
                      } )),
                      IconButton(icon: Icon(Icons.layers_clear), onPressed:(){
                        point.clear();
                      }),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter{
  List<Drawingarea> points;
  Color color ;
  double StrokeWidht ;
  MyCustomPainter({this.points,this.color,this.StrokeWidht}) ;
  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()
      ..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);

    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        Paint paint = points[x].areapaint;
        canvas.drawLine(points[x].point, points[x+ 1].point, paint);
      } else if (points[x] != null && points[x + 1] == null) {
        Paint paint = points[x].areapaint;
        canvas.drawPoints(PointMode.points, [points[x].point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    //throw UnimplementedError();
    return true ;
  }

}








