import 'package:dio/dio.dart';
import 'package:github_status/resources/models/response/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user_remote_repository.g.dart';

@RestApi()
abstract class UserRemoteRepository {
  factory UserRemoteRepository(Dio dio) = _UserRemoteRepository;

  @GET("/users")
  Future<User> index();
}
