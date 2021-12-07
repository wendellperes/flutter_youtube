import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tubetest_app/model/video.dart';
const api_key = 'AIzaSyAakOfy68KobR7mAvsdX_nP3g-F5-xeUtk';



// const link1 = '';
// const link2 = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$_search&type=video&key=$API_KEY&maxResults=10&pageToken=$_nextToken";
// const link3 = "http://suggestqueries.google.com/complete/search?hl=en&ds=yt&client=youtube&hjson=t&cp=1&q=$search&format=5&alt=json";

class Api{
  search(String search) async{
    final _authority = "www.googleapis.com";
    final _path = "/youtube/v3/search";
    final _params = {
      "part": "snippet",
      "q": search,
      "key": api_key,
      "maxResults": '10'
    };
    final _uri = Uri.https(_authority, _path, _params);
    print('url : $_uri');
    http.Response response = await http.get(_uri);
    print(response.body);
    decode(response);
  }

  decode(http.Response response){
    if(response.statusCode ==200){
      var decode = json.decode(response.body);
      List<Video> videos = decode["items"].map<Video>(
          (map){
            return Video.fromJson(map);
          }
      ).toList();
      print(videos.length);
    }else{
      throw Exception("Failed to load video");
    }
  }
}



