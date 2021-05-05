import 'file:///C:/Users/matheus.sousa/AndroidStudioProjects/flutter_app/lib/views/home/home.dart';
import 'package:flutter_app/views/login/login_screen.dart';
import 'package:get/get.dart';

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => MyHomePage(),
    ),
  ];
}