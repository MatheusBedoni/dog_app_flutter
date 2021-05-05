import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants/c_api_url.dart';
import 'package:flutter_app/data/service/breed_api_post_client.dart';
import 'package:flutter_app/views/widgets/w_text_field.dart';
import 'package:get/get.dart';

import 'controller/c_login.dart';

class LoginPage extends StatelessWidget {
  var loginController = Get.put(LoginController(breedapiPostClient: new BreedapiPostClient(baseAddress:ApiUrls.BASE_URL)));
  final ctrlEmail = new TextEditingController();
  final ctrlPass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dogs Api'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WTextField(controller: ctrlEmail, isPass: false,),
            WTextField(controller: ctrlPass, isPass: true,),
            ElevatedButton(
              child: Text('Autenticar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed: () {
                loginController.autenticar(ctrlEmail.text, ctrlPass.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
