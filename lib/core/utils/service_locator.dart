import 'package:bookly/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    getIt.get<ApiService>(),
  );
  getIt.registerSingleton<ApiService>(
    getIt.get<ApiService>(),
  );
}

class AuthRepo {
  final ApiService apiService;
  AuthRepo(this.apiService);
}
 