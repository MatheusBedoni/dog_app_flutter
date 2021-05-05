library api_testing_flutter_kata;

import 'dart:convert';
import 'package:flutter_app/data/constants/c_api_url.dart';
import 'package:flutter_app/data/helper/h_get_api.dart';
import 'package:flutter_app/data/interface/i_breed_api.dart';
import 'package:flutter_app/data/model/m_breed.dart';

class BreedapiGetClient with ApiGetHelper implements ApiInterfaceGetDog {
    String baseAddress;

   BreedapiGetClient({this.baseAddress});
  @override
  Future<List<Breed>> getAllBreeds() async {
    final response = await get('/${ApiUrls.ROUTE_BREEDS}',this.baseAddress);
    final decoded = json.decode(response.body) as List;
    return decoded.map((jsonTask) => Breed.fromJson(jsonTask)).toList();
  }
}
