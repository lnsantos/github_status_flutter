import 'package:dio/dio.dart';
import 'package:github_status/app/models/response/users.dart';
import 'package:retrofit/retrofit.dart';

part 'user_remote_repository.g.dart';

@RestApi()
abstract class UserRemoteRepository{

  factory UserRemoteRepository(Dio dio) = _UserRemoteRepository;
  
  @GET("/users")
  Future<Users> index();
}