import 'package:flutter_app/data/interface/i_to_json.dart';

class Height implements InterfaceToJson{
  String imperial;
  String metric;

  Height({this.imperial, this.metric});

  Height.fromJson(Map<String, dynamic> json) {
    imperial = json['imperial'];
    metric = json['metric'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imperial'] = this.imperial;
    data['metric'] = this.metric;
    return data;
  }
}
