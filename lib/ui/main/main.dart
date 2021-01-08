import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:multimedia/ui/levelone/levelone.dart';
import 'package:multimedia/ui/leveltwo/Alef.dart';
import 'package:multimedia/ui/leveltwo/Alef.dart';

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
                      child : Text(
                      "Level 1",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 4.0,
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(5.0,5.0),
                            blurRadius: 3.0,
                            color: Colors.teal[800],
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
                                  Alef()),
                        );
                      },
                      child: Text(
                        "Level 2",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 4.0,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(5.0,5.0),
                              blurRadius: 3.0,
                              color: Colors.teal[800],
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