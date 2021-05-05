import 'package:flutter_app/data/constants/c_api_url.dart';
import 'package:flutter_app/data/interface/i_breed_api.dart';
import 'package:http/http.dart' as http;

class BreedapiPostClient  implements ApiInterfacePostDog {
  final String baseAddress;

  BreedapiPostClient({this.baseAddress});

  @override
  Future<int> loginUser(String email, String pass) async {
    Map<String, String> body =
    {
      "email": email,
      "password": pass
    };
    final url = "${ApiUrls.BASE_URL}/${ApiUrls.API}/${ApiUrls.VERSION}/${ApiUrls.ROUTE_LOGIN}";
    final response = await http.post(url, body: body);
    return response.statusCode;
  }
}
