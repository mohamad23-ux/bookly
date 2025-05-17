import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio())); // ✅ تسجيل ApiService بشكل صحيح
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>())); // ✅ تسجيل HomeRepoImpl بعد ApiService
}

class AuthRepo {
  final HomeRepoImpl homeRepo;

  AuthRepo() : homeRepo = getIt.get<HomeRepoImpl>(); // ✅ الآن GetIt يعرف HomeRepoImpl
}
