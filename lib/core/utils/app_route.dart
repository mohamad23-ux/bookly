import 'package:bookly/features/Splash/presentation/views/bookdetailsview.dart';
import 'package:bookly/features/Splash/presentation/views/homeview.dart';
import 'package:bookly/features/Splash/presentation/views/splashView/splash_view.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: KHomeView, builder: (context, state) => const Homeview()),
    GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsview()),
    GoRoute(path: searchView, builder: (context, state) => const SearchView()),
  ]);
}
