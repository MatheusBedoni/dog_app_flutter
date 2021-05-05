import 'package:flutter_app/data/interface/i_breed_api.dart';
import 'package:flutter_app/infrastructure/navigation/routes.dart';
import 'package:get/get.dart';

class LoginInterface{
  Future<void> autenticar(String email, String pass) async{}
}

class LoginController extends GetxController implements LoginInterface{
  ApiInterfacePostDog breedapiPostClient;

  LoginController({this.breedapiPostClient});

  @override
  Future<void> autenticar(String email, String pass) async{
    var status = await breedapiPostClient.loginUser(email, pass);
    if(status == 200){
       Get.toNamed(Routes.HOME);
    }
  }
}