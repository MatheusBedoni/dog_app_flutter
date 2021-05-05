import 'package:flutter_app/data/interface/i_to_json.dart';
import 'package:flutter_app/data/model/m_height.dart';

import 'm_image.dart';

class Breed implements InterfaceToJson{
  String bredFor;
  String breedGroup;
  Height height;
  int id;
  Image image;
  String lifeSpan;
  String name;
  String origin;
  String referenceImageId;
  String temperament;
  Height weight;

  Breed(
      {this.bredFor,
        this.breedGroup,
        this.height,
        this.id,
        this.image,
        this.lifeSpan,
        this.name,
        this.origin,
        this.referenceImageId,
        this.temperament,
        this.weight});

  Breed.fromJson(Map<String, dynamic> json) {
    bredFor = json['bred_for'];
    breedGroup = json['breed_group'];
    height =
    json['height'] != null ? new Height.fromJson(json['height']) : null;
    id = json['id'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    lifeSpan = json['life_span'];
    name = json['name'];
    origin = json['origin'];
    referenceImageId = json['reference_image_id'];
    temperament = json['temperament'];
    weight =
    json['weight'] != null ? new Height.fromJson(json['weight']) : null;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bred_for'] = this.bredFor;
    data['breed_group'] = this.breedGroup;
    if (this.height != null) {
      data['height'] = this.height.toJson();
    }
    data['id'] = this.id;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    data['life_span'] = this.lifeSpan;
    data['name'] = this.name;
    data['origin'] = this.origin;
    data['reference_image_id'] = this.referenceImageId;
    data['temperament'] = this.temperament;
    if (this.weight != null) {
      data['weight'] = this.weight.toJson();
    }
    return data;
  }
}


