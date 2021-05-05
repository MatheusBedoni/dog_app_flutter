

import 'package:flutter_app/data/interface/i_breed_api.dart';
import 'package:flutter_app/data/model/m_breed.dart';
import 'package:get/get.dart';

class HomeInterface{
  Future<bool> getAllBreeds() async{}
}

class HomeController extends GetxController implements HomeInterface{
  ApiInterfaceGetDog breedapiGetClient;
  List<Breed> listBreed;

  HomeController({this.breedapiGetClient,this.listBreed});

  @override
  void onInit() {
    getAllBreeds();
    super.onInit();
  }

  @override
  Future<bool> getAllBreeds() async{
    listBreed = await breedapiGetClient.getAllBreeds();
    update();
    return true;
  }


}