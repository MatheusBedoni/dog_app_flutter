import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants/c_api_url.dart';
import 'package:flutter_app/data/service/breed_api_get_client.dart';
import 'package:flutter_app/views/home/controller/c_home.dart';
import 'package:flutter_app/views/widgets/w_breed_list.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  var homeController = Get.put(HomeController(breedapiGetClient: new BreedapiGetClient(baseAddress:ApiUrls.BASE_URL),listBreed: []));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dogs Api'),
      ),
      body: Center(
        child:  WbreedList(listBreed: homeController.listBreed,),
      ),
    );
  }
}
