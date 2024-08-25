 import 'package:dio/dio.dart';

class ApiService
 {

   final Dio _dio;

   final baseUrl='https://www.googleapis.com/books/v1/';

   ApiService(this._dio);
 Future<Map<String,dynamic>>get({required String endpoint})async
  {
   var response =await _dio.get('$baseUrl$endpoint');
   return response.data;
   //   أنت مهتم فقط بال  Data بس مش بال response كله
  }
  //method
 }
 // Dio createAndSetUpDio()
 // {
 //   Dio dio =Dio();
 //   BaseOptions(
 //       connectTimeout:Duration(milliseconds:1*100),
 //       receiveTimeout:Duration(milliseconds:1*100)
 //   );
 //   dio.interceptors.add(LogInterceptor
 //     (responseBody: true,
 //       error: true,
 //       requestHeader: false,
 //       request:true,
 //       requestBody: true,
 //       responseHeader: false
 //   ));
 //   return dio;
 //
 // }