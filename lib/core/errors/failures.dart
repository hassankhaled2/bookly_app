import 'package:dio/dio.dart';

abstract class Failure
{
final String message;

  Failure(this.message);
}
class ServerFailure extends Failure
{
  ServerFailure(super.message);
factory ServerFailure.fromDiorError(DioError e)
{
  switch (e.type) {
    case DioErrorType.connectionTimeout:
      return ServerFailure('Connection timeout with ApiServer');

    case DioErrorType.sendTimeout:
      return ServerFailure('Send timeout with ApiServer');

    case DioErrorType.receiveTimeout:
      return ServerFailure('Receive timeout with ApiServer');

    case DioErrorType.badResponse:
    return  ServerFailure.fromResponse(e.response!.statusCode,e.response!.data!);

    case DioErrorType.cancel:
      return ServerFailure('Request to ApiServer was canceld');

    case DioErrorType.unknown:
      if (e.message!.contains('SocketException')) {
        return ServerFailure('No Internet Connection');
      }
      return ServerFailure('Unexpected Error, Please try again!');
    default:
      return ServerFailure('Opps There was an Error, Please try again');
  }
}
factory ServerFailure.fromResponse(int?statusCode,dynamic response)
{
if(statusCode ==404)
{
  return ServerFailure('Your request was not found ,please try later');
}else if(statusCode==500)
{
return ServerFailure('there is a problem with server,please try later');
}
else if(statusCode==400||statusCode==401||statusCode==403)
{
  return ServerFailure(response['error']['message']);
}else
{
  return ServerFailure('there was an error,please try again');
}
}
}

// class CacheFailure extends Failure{}
// class NetworkFailure extends Failure{}