import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'QpnsG1DdjyQ',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
      hideControls: false,
    ),
  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: false,
            progressColors: ProgressBarColors(
              backgroundColor: Colors.white.withOpacity(0.1),
              bufferedColor: Colors.white54,
              handleColor: Colors.red,
              playedColor: Colors.red,
            ),
            thumbnail: Text(
              "Hola",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            // videoProgressIndicatorColor: Colors.amber,
            // progressColors: ProgressColors(
            //   playedColor: Colors.amber,
            //   handleColor: Colors.amberAccent,
            // ),
          ),
        ],
      ),
    );
  }
}
