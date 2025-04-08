import 'package:bookly_app/features/home/presention/views/book_detiles_view.dart';
import 'package:bookly_app/features/home/presention/views/home_views.dart';
import 'package:bookly_app/features/presention/views/splash_view.dart';
import 'package:bookly_app/features/search/presentions/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetilesView = '/bookDetilesView';
  static const String kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeViews();
        },
      ),
      GoRoute(
        path: kBookDetilesView,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetilesView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
