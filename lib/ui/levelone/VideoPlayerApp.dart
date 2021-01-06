import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multimedia/model/arabicalphabet.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerApp extends StatelessWidget {
  String link;
  VideoPlayerApp(this.link);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPlayerScreen(link),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  String link ;

  VideoPlayerScreen(this.link);


  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState(link);
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  String link;
  Future<void> _initializeVideoPlayerFuture;


  _VideoPlayerScreenState(this.link);


  @override
  void initState() {
    _controller = VideoPlayerController.network(
      link,
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {

                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );
                } else {

                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
