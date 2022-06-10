import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
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
      backgroundColor: kBrandPrimaryColor,
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
          ListTile(
            title: Text(
              "Lorem ipsum dolor sit amet Lorem ipsum dolor sitorem ipsum dolor sit amet",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.white, fontSize: 14.0, height: 1.3),
            ),
            subtitle: Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              child: const Text(
                "8.8 M de vistas · hace 5 años",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13.0,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconDetailVideoWidget(
                    icon: Icons.thumb_up_alt_outlined,
                    text: "354 K",
                  ),
                  IconDetailVideoWidget(
                    icon: Icons.thumb_down_alt_outlined,
                    text: "No me gusta",
                  ),
                  IconDetailVideoWidget(
                    icon: Icons.share,
                    text: "Compartir",
                  ),
                  IconDetailVideoWidget(
                    icon: Icons.download_rounded,
                    text: "Descargar",
                  ),
                  IconDetailVideoWidget(
                    icon: Icons.cut,
                    text: "Recortar",
                  ),
                  IconDetailVideoWidget(
                    icon: Icons.video_settings,
                    text: "Guardar",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconDetailVideoWidget extends StatelessWidget {

  IconData icon;
  String text;
  IconDetailVideoWidget({required this.icon, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 26.0,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white60,
              fontSize: 12.0,
              fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
