
import 'dart:convert';

import 'package:http/http.dart' as http;

class APIService{



  getVideos() async{
    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=&maxResults=20&regionCode=PE";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> mapVideo = json.decode(response.body);
      List videos = mapVideo["items"];
      print(videos);
    }
  }




}