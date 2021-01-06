import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:multimedia/model/arabicalphabet.dart';
import 'package:multimedia/ui/levelone/VideoPlayerApp.dart';

import 'paintClass.dart';

class levelone extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _levelone(context);
}

Widget _levelone(BuildContext context) {
  List<arabicalphabet> list = new List();
  list.add(new arabicalphabet(1, translator.translate('q'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%A3.mp4?alt=media&token=a5722f1a-4413-476f-9a0e-ba1f6a67cb64"));
  list.add(new arabicalphabet(2, translator.translate('w'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%A8.mp4?alt=media&token=d6ca1c8c-d168-481a-aa89-f603b1504c84"));
  list.add(new arabicalphabet(3, translator.translate('e'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AA.mp4?alt=media&token=6f519023-14b1-4efb-8727-9dc1abe6b3c3"));
  list.add(new arabicalphabet(4, translator.translate('r'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AB.mp4?alt=media&token=352c5ce9-7faf-4258-a79d-3129790c718e"));
  list.add(new arabicalphabet(5, translator.translate('t'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AC.mp4?alt=media&token=d1593d40-997d-4cf0-8203-b4352b99ff12"));
  list.add(new arabicalphabet(6, translator.translate('y'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AD.mp4?alt=media&token=5377ceb4-8875-44a7-9e5e-305f03ea1201"));
  list.add(new arabicalphabet(7, translator.translate('u'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AE.mp4?alt=media&token=b0610f8d-6910-4935-88bc-4ddebdb8314a"));
  list.add(new arabicalphabet(8, translator.translate('i'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%AF.mp4?alt=media&token=1ec822d9-46b1-4797-9011-2fda1794783b"));
  list.add(new arabicalphabet(9, translator.translate('o'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B0.mp4?alt=media&token=f8e704cb-8c14-4b7e-9e3c-1f9c2273654f"));
  list.add(new arabicalphabet(10, translator.translate('p'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B1.mp4?alt=media&token=ace8ba8b-cfb5-4428-9517-524083ebed08"));
  list.add(new arabicalphabet(11, translator.translate('a'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B2.mp4?alt=media&token=d1fd25af-8f27-4487-bcfe-184f5b6d0e1a"));
  list.add(new arabicalphabet(12, translator.translate('s'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B3.mp4?alt=media&token=2c673b10-7e56-4d47-a3c7-2e0db72f24ca"));
  list.add(new arabicalphabet(13, translator.translate('d'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B4.mp4?alt=media&token=8f86b10a-dc30-435e-842e-34a8e993fba6"));
  list.add(new arabicalphabet(14, translator.translate('f'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B5.mp4?alt=media&token=14b1a2e3-23e7-4b1f-a9d9-32115fed5448"));
  list.add(new arabicalphabet(15, translator.translate('g'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B6.mp4?alt=media&token=b1f49d90-3a66-4ffd-b29a-61b297226aa3"));
  list.add(new arabicalphabet(16, translator.translate('h'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B7.mp4?alt=media&token=b5b3143b-93f8-4ea4-a520-6b9c7e86f5ac"));
  list.add(new arabicalphabet(17, translator.translate('j'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B8.mp4?alt=media&token=a6dc407a-f1f8-4d0d-957f-4d3c8b4a13d5"));
  list.add(new arabicalphabet(18, translator.translate('k'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%B9.mp4?alt=media&token=f5f5decd-017f-41f6-a6a4-c101f86d5320"));
  list.add(new arabicalphabet(18, translator.translate('l'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D8%BA.mp4?alt=media&token=ba101458-4c51-4c18-9607-25f73233c367"));
  list.add(new arabicalphabet(20, translator.translate('z'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%81.mp4?alt=media&token=496b72e9-3378-423a-9975-c095af9488bf"));
  list.add(new arabicalphabet(21, translator.translate('x'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%82.mp4?alt=media&token=9a17ba30-bad7-4f43-b5c9-dbbeabbba2e7"));
  list.add(new arabicalphabet(22, translator.translate('c'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%83.mp4?alt=media&token=724f129f-30f8-4601-8810-2fdfd87911e7"));
  list.add(new arabicalphabet(23, translator.translate('v'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%84.mp4?alt=media&token=e71a66ab-bfc4-4fe8-8ede-6fdc7a750b6c"));
  list.add(new arabicalphabet(24, translator.translate('b'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%85.mp4?alt=media&token=6dbd3d86-f9eb-4346-bbd6-0d32b8890254"));
  list.add(new arabicalphabet(25, translator.translate('n'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%86.mp4?alt=media&token=c90b4400-5e65-46c2-bf50-65fe7ab38811"));
  list.add(new arabicalphabet(26, translator.translate('m'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%87%D9%80%D9%80.mp4?alt=media&token=74526e34-a132-4054-a62a-b35caa6a8bc7"));
  list.add(new arabicalphabet(27, translator.translate('aa'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%88.mp4?alt=media&token=7dae2127-5be1-47b1-850a-31aecec9707f"));
  list.add(new arabicalphabet(28, translator.translate('bb'),
      "https://firebasestorage.googleapis.com/v0/b/video-64558.appspot.com/o/videos%2F%D8%AD%D8%B1%D9%81%20%D9%8A.mp4?alt=media&token=9e259797-35eb-40f2-bd4d-cafa044b8544"));
  return

    ListView.builder(
    itemCount: list.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(
            list[index].name,
            style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Container(
                      child: Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    border: InputBorder.none,
                                    hintText: translator.translate('prefer')),
                              ),
                              SizedBox(
                                  width: 320.0,
                                  child: Column(
                                    children: [
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VideoPlayerApp(list[index]
                                                        .LinkofVideo)),
                                          );
                                        },
                                        child: Text(
                                          translator.translate('video'),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        color: Colors.blue,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    paintClass()),
                                          );
                                        },
                                        child: Text(
                                          translator.translate('paint'),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          },
        ),
      );
    },
  );
}
