import 'package:course_app/domainBloc/model/login_request.dart';
import 'package:course_app/domainBloc/model/login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class AuthRepository{
  //buat variabel baru untuk si lib dio nya dan panggil dio nya
  Dio _dio  = Dio();



// make a function untuk sign in usernya ini function tanpa error handling , dan masih maanual
/*
   Future<String>signInWithEmailAndPassword({
  */
/**  buat parameter dari functionnya **//*

    required String email,
    required String password,
  }) async{
   */
/** kita buat response dari api nya , response kita ambil dari DIO **//*

     Response _response;

     */
/** lalu responsenya kita panggil dengan  var dio yang udah kita buat setelah itu , method yg digunakan (post), then masukan link url apinya **//*

     Map<String, dynamic> requestData =
     {
       //untuk key harus sama penulisannya dg si API agar bisa di call datanya
       "email" : email,
       "password" : password,
     };
     _response = await _dio.post('https://reqres.in/api/login', data: requestData);
      */
/**   then kita buat datanya , untuk datanya kita pakai map (Key value , key(value si API) dan value(parameter dari func, nah jadi pertama buat request datanya dulu
      baru setelah itu responsenya , then kalau udah kita make resultnya dia , yang udah ditampung di response , dengan memanggil var
      response , habis tu datanya , lalu ubah ke string)) **//*

     String _result = _response.data.toString();
     return _result;
   }
*/

  /** Make a function with dartz yang bisa */

   /** Nah disini kita pakai either ari si dartz gunanya untuk , memberi param ketika error , an success
    * jadi yg sebelah kiri itu ketika error diminta untuk tampilin string
    * kalau nanti  (sebelah kanan) success maka akan nampilin si response nya */

   Future<Either<String, LoginResponse>> signInWithEmailAndPassword({
   required LoginRequest loginRequest,
   }) async {
      Response _response;
      try {
        _response = await _dio.post('https://reqres.in/api/login', data: loginRequest.toJson());
      LoginResponse _loginResp = LoginResponse.fromJson(_response.data);
        return right(_loginResp);
      } on DioError catch(e){
      //   untuk error yang dihasilkan dari dio
        print(e.response.statusCode);
        String errorMessage = e.response.data.toString();


        switch(e.type) {
          case DioErrorType.CONNECT_TIMEOUT:
            // TODO: Handle this case.
            break;
          case DioErrorType.SEND_TIMEOUT:
            // TODO: Handle this case.
            break;
          case DioErrorType.RECEIVE_TIMEOUT:
            // TODO: Handle this case.
            break;
          case DioErrorType.RESPONSE:
            errorMessage = e.response.data['error'];

            break;
          case DioErrorType.CANCEL:
            // TODO: Handle this case.
            break;
          case DioErrorType.DEFAULT:
            // TODO: Handle this case.
            break;
        }

        return left(errorMessage);

      }

}

}