import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'login_model.dart';
import 'package:authenticate/DioClient.dart';

class DioClient {



  Future<LoginModel?> userSignIn({required String email, required String password }) async {
    LoginModel? retrievedUser;
    var jsonResponse ;
    final _dio = Dio();
    final _baseUrl = 'https://example.com/login';
    final data = {"email": email, "password": password};

    try {
      Response response = await _dio.post(
        _baseUrl, data: data);

      print('User loginData: ${response.data}');

      retrievedUser = LoginModel.fromJson(response.data);
      print(response.data);
      print(response.statusCode);
      if (response.statusCode == 200) {
        final body = response.data;
        return LoginModel(email: email, password: body['token']);
        print('success');
      } else {
        print('error');
      }
    } catch (e) {
      print('Error creating user: $e');
    }
  }

}