import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Earth extends StatefulWidget {
  const Earth({Key? key}) : super(key: key);

  @override
  _EarthState createState() => _EarthState();
}

class _EarthState extends State<Earth> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/earth.mov',  // Check the file path
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true)
    )
    ..initialize().then((_) {
      setState(() {
        _controller.setVolume(0);  // Mute the video
        _controller.setLooping(true);
        _controller.play();  // Play the video automatically after initialization
      });
    }).catchError((error) {
      print('Failed to initialize video: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Container(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
