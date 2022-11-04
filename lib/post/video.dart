import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  State<StatefulWidget> createState() => _VideoWidget(this.videoUrl);
}

class _VideoWidget extends State<VideoWidget> {
  final String videoUrl;
  late VideoPlayerController _controller;

  _VideoWidget(this.videoUrl);

  bool islecture = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.setLooping(false);
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        if (islecture == true) {
          _controller.pause();
          islecture = !islecture;
        } else {
          _controller.play();
          islecture = !islecture;
        }
        setState(() {});
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
