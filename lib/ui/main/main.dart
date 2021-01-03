import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:multimedia/ui/levelone/levelone.dart';
import 'package:multimedia/ui/levelone/VideoPlayerApp.dart';

main() async {
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
