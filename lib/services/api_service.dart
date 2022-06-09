
import 'dart:convert';

import 'package:flutter_codigo5_youapp/models/video_model.dart';
import 'package:http/http.dart' as http;

class APIService{



  Future<List<VideoModel>> getVideos() async{
    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=&maxResults=20&regionCode=US";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> mapVideo = json.decode(response.body);
      List videos = mapVideo["items"];
      List<VideoModel> videoModelList = videos.map((e) => VideoModel.fromJson(e)).toList();
      return videoModelList;
    }
    return [];
  }




}