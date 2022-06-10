import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  String videoId;
  VideoDetailPage({required this.videoId});
  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {

  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
      ),
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.35,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: false,
              progressColors: ProgressBarColors(
                backgroundColor: Colors.white.withOpacity(0.1),
                bufferedColor: Colors.white54,
                handleColor: Colors.red,
                playedColor: Colors.red,
              ),
              // bottomActions: [
              //
              // ],
              // thumbnail: Text(
              //   "Hola",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20.0,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
