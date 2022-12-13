/*
* flutter pub add video_player 
*/

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerW extends StatefulWidget {
  const VideoPlayerW({Key? key}) : super(key: key);

  @override
  State<VideoPlayerW> createState() => _VideoPlayerWState();
}

class _VideoPlayerWState extends State<VideoPlayerW> {
  late VideoPlayerController _controller;

  @override
  void initState() async {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    await _controller.initialize();
    setState(() {});
  }

  // TODO: REVISAR EL WIDGET
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _controller.play();
                  },
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
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
