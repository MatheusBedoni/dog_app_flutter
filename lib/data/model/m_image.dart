import 'package:flutter_app/data/interface/i_to_json.dart';

class Image implements InterfaceToJson{
  int height;
  String id;
  String url;
  int width;

  Image({this.height, this.id, this.url, this.width});

  Image.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    id = json['id'];
    url = json['url'];
    width = json['width'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['id'] = this.id;
    data['url'] = this.url;
    data['width'] = this.width;
    return data;
  }
}