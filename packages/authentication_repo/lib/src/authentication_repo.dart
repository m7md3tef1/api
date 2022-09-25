import 'package:authentication_repo/src/models/login_response.dart';
import 'package:authentication_repo/src/models/user.dart';
import 'package:dio/dio.dart';

String baseUrl = 'https://menialawyschool.com';

class Api {
  Future<dynamic> postHttp(
      {required url, required data, authToken, queryParams}) async {
    try {
      var response = await Dio().post(baseUrl + '$url',
          data: data,
          queryParameters: queryParams,
          options: Options(
            headers: {"Authorization": "Bearer $authToken"},
          ));
      if (response.statusCode == 200) {
        print('-----------------------');
        print(response.data);
        return response.data;
      }
    } on DioError catch (e) {
      print('------------------------');
      print(e.response);
      print(e.response!.data['message']);
    }
  }


}
  String token = '';

class Login{
  logIn(loginResponse) {
    var response=   Api().postHttp(url:'/api/login',data: loginResponse.tojson());


    response
        .then((value) => {
      token=value['data']['accessToken'],
      print('//////////////////////////////'),
      print(value),

      print(token),
      print(response),


      print('Success')

    }).onError((error, stackTrace) => {

      print('Failed'),
      print(error.toString()),
      print(token),

    });}
}