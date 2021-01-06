import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:multimedia/ui/levelone/levelone.dart';
import 'package:multimedia/ui/levelone/VideoPlayerApp.dart';
import 'package:multimedia/ui/levelone/levelone.dart';
import 'package:multimedia/ui/leveltwo/Menu.dart';
import 'package:multimedia/ui/leveltwo/leveltwo.dart';
import 'package:multimedia/ui/leveltwo/leveltwo.dart';
import 'package:multimedia/ui/leveltwo/leveltwo.dart';

/*main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: '<Key>',
  );

  runApp(MaterialApp(
      localizationsDelegates: translator.delegates,
      // Android + iOS Delegates
      locale: translator.locale,
      // Active locale
      supportedLocales: translator.locals(),
      // Locals list
      debugShowCheckedModeBanner: false,
      title: translator.translate('levelone'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'MyApp',
      routes: {
        'MyApp': (context) => MyApp(),
        'levelone': (context) => levelone(),
        'VideoPlayerApp': (context) => VideoPlayerApp(null),
        'login': (context) => login(),
        'VideoPlayerApp': (context) => VideoPlayerApp(null),
        'VideoPlayerApp': (context) => VideoPlayerApp(null),
      }));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Locals list
    return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.arrow_back_rounded,
                    textDirection: TextDirection.rtl,
                  ),
                  onPressed: () =>
                      Navigator.of(context).pop(VideoPlayerApp("link")),
                ),
                Text(
                  translator.translate('levelone'),
                  style: GoogleFonts.cairo(),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ],
            ),

          ),
          body: levelone(),
        );
  }
}

 */


/*
import 'package:flutter/material.dart';
import 'dart:ui';


menu obj = new menu();
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  ));
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}
class _loginState extends State<login> {

  var _name = '';
  final nameCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello \n $_name',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 4.0,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0,3.0),
                        blurRadius: 3.0,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ),
                TextField(
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0,2.0),
                        blurRadius: 3.0,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  controller: nameCon,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                  ),
                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>obj)) ;
                    setState(() {
                      _name = nameCon.text;
                    });
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 60.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0,3.0),
                          blurRadius: 3.0,
                          color: Colors.grey[850],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

*/


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: '<Key>',
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: menu(),
  ));
}



class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Your level',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 4.0,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      onPressed: (){            // Button Action to start paint page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  levelone()),
                        );
                      },
                      child: Text(
                        "Level 1",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 4.0,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0,3.0),
                              blurRadius: 3.0,
                              color: Colors.grey[500],
                            ),
                          ],
                        ),
                      ),
                      color: Colors.lightBlue,
                    ),
                    FlatButton(
                      onPressed: (){            // Button Action to start paint page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  leveltwo()),
                        );
                      },
                      child: Text(
                        "Level 2",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 4.0,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0,3.0),
                              blurRadius: 3.0,
                              color: Colors.grey[500],
                            ),
                          ],
                        ),
                      ),
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}